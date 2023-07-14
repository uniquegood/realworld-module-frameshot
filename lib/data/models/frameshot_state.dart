import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'frameshot_state.freezed.dart';

class Uint8ListConverter implements JsonConverter<Uint8List, List<int>> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(List<int> json) {
    return Uint8List.fromList(json);
  }

  @override
  List<int> toJson(Uint8List object) {
    return object.toList();
  }
}

@freezed
class FrameshotState with _$FrameshotState {
  const factory FrameshotState.initialize() = FrameshotInitialize;

  const factory FrameshotState.permission() = FrameshotPermission;

  const factory FrameshotState.view({
    required String imageUrl,
    required CameraController controller,
  }) = FrameshotView;

  const factory FrameshotState.show({
    @Uint8ListConverter() required Uint8List image,
  }) = FrameshotShow;
}
