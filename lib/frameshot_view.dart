import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:bitmap/bitmap.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

class FrameShotView extends StatefulHookConsumerWidget {
  final String frameImageUrl;
  final double frameWidth;
  final CameraController cameraController;
  final int cameraIndex;

  const FrameShotView({
    super.key,
    required this.frameImageUrl,
    required this.frameWidth,
    required this.cameraController,
    required this.cameraIndex,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FrameShotViewPageState();
}

class _FrameShotViewPageState extends ConsumerState<FrameShotView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final w = widget.frameWidth;

    return Center(
      child: Stack(
        children: [
          ClipRRect(
            child: SizedOverflowBox(
              size: Size(w, w),
              alignment: Alignment.center,
              child: CameraPreview(widget.cameraController),
            ),
          ),
          SizedBox(
            width: w,
            height: w,
            child: CachedNetworkImage(
              imageUrl: widget.frameImageUrl,
              imageBuilder: (context, imageProvider) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
