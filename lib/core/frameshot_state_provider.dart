import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:bitmap/bitmap.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../data/models/frameshot_state.dart';
import '../frameshot_controller.dart';

class FrameshotStateNotifier extends StateNotifier<FrameshotState> {
  /// Frameshot Controller
  FrameshotController? controller;

  /// Camera Controller
  CameraController? cameraController;
  late CameraDescription cameraDescription;

  FrameshotStateNotifier() : super(const FrameshotInitialize());

  @override
  dispose() {
    controller?.dispose();
    controller = null;

    cameraController?.dispose();
    cameraController = null;
    super.dispose();
  }

  Future<List<CameraDescription>> get cameras async {
    return await availableCameras();
  }

  Future<CameraDescription> getCameraDescriptionFromPosition(
      String position) async {
    final cameraList = await cameras;
    final cameraPosition = position == 'front' ? 1 : 0;
    return cameraList[cameraPosition];
  }

  Future<void> initialize(FrameshotController controller) async {
    const camera = Permission.camera;
    final PermissionStatus cameraState = await camera.request();
    const storage = Permission.storage;
    await storage.request();

    if (cameraState.isGranted) {
      cameraDescription =
          await getCameraDescriptionFromPosition(controller.getPosition);
      cameraController = CameraController(
        cameraDescription,
        ResolutionPreset.max,
        enableAudio: false,
      );
      await cameraController!.initialize();

      state = FrameshotView(
          imageUrl: controller.imageUrl, controller: cameraController!);

      /// Initialize Frameshot
      this.controller = controller;
      this.controller?.event.on('capture', capture);
    }
  }

  capture(message) async {
    if (message is String) {
      if (message == 'capture') {
        await _capture();
      }
      if (message == 'reset') {
        await _reset();
      }
      if (message == 'save') {
        await _save();
      }
      if (message == 'position') {
        cameraDescription =
            await getCameraDescriptionFromPosition(controller!.getPosition);
        await cameraController?.setDescription(cameraDescription);
      }
    }
  }

  _capture() async {
    final imageOrg = await cameraController!.takePicture();
    var imageProperties =
        await FlutterNativeImage.getImageProperties(imageOrg.path);
    var cropSize = imageProperties.width!;
    var startWidth = 0;
    var startHeight = 0;
    if (cropSize > imageProperties.height!) {
      cropSize = imageProperties.height!;
      startWidth = (imageProperties.width! - cropSize) ~/ 2;
      startHeight = 0;
    } else {
      startHeight = (imageProperties.height! - cropSize) ~/ 2;
      startWidth = 0;
    }
    final image = await FlutterNativeImage.cropImage(
      imageOrg.path,
      startWidth,
      startHeight,
      cropSize,
      cropSize,
    );
    var imageBitmap = await Bitmap.fromProvider(Image.file(image).image);
    var frameBitmap =
        await Bitmap.fromProvider(NetworkImage(controller!.imageUrl));
    if (cameraDescription.lensDirection == CameraLensDirection.front) {
      imageBitmap = imageBitmap.apply(BitmapFlip.horizontal());
    }
    final imageBytes = await _merge(
      image: await imageBitmap.buildImage(),
      frame: await frameBitmap.buildImage(),
    );
    try {
      controller?.event.emit('capture_res', imageBytes);
    } catch (_) {}
    state = FrameshotShow(image: imageBytes);
  }

  _reset() async {
    state = FrameshotView(
        imageUrl: controller!.imageUrl, controller: cameraController!);
    try {
      controller?.event.emit('capture_reset', null);
    } catch (_) {}
  }

  _save() async {
    if (state is FrameshotShow) {
      final image = (state as FrameshotShow).image;
      final tempDir = await getTemporaryDirectory();
      final tempFile =
          File("${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.png");
      await tempFile.writeAsBytes(image);
      await GallerySaver.saveImage(tempFile.path);

      try {
        controller?.event.emit('capture_save', tempFile.path);
      } catch (_) {}
    }
  }

  // * 두개의 이미지를 하나로 합치는 처리를 진행한다.
  Future<Uint8List> _merge({
    required ui.Image image,
    required ui.Image frame,
  }) async {
    final recorder = ui.PictureRecorder();
    var imageRect = Rect.fromPoints(
        Offset.zero, Offset(image.width.toDouble(), image.height.toDouble()));
    var frameRect = Rect.fromPoints(
        Offset.zero, Offset(frame.width.toDouble(), frame.height.toDouble()));
    final canvas = Canvas(recorder, imageRect);
    final paint = Paint();
    canvas.drawImageRect(
      image,
      imageRect,
      imageRect,
      paint,
    );
    canvas.drawImageRect(
      frame,
      frameRect,
      imageRect,
      paint,
    );

    final pic = recorder.endRecording();
    final img = await pic.toImage(image.width, image.height);
    final imgBytes = await img.toByteData(format: ui.ImageByteFormat.png);
    final imgBuff = imgBytes!.buffer.asUint8List();
    return imgBuff;
  }
}

final frameshotStateNotifierProvider =
    StateNotifierProvider.autoDispose<FrameshotStateNotifier, FrameshotState>(
  (ref) => FrameshotStateNotifier(),
);
