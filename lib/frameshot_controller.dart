import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:event_listener/event_listener.dart';
import 'package:share_plus/share_plus.dart';

class FrameshotController {
  final EventListener event = EventListener();

  final String imageUrl;

  String _position;

  String get getPosition => _position;

  // Temp File
  String? _tempFilePath;

  set position(String value) {
    _position = value;
    event.emit('capture', 'position');
  }

  FrameshotController({
    required this.imageUrl,
    required String position,
  }) : _position = position;

  dispose() {
    event.removeAllListeners('capture');
    event.removeAllListeners('capture_res');
    event.removeAllListeners('capture_reset');
    event.removeAllListeners('capture_save');
  }

  Future<void> reset() async {
    final completer = Completer<void>();
    event.once('capture_reset', (_) {
      completer.complete();
    });
    event.emit('capture', 'reset');
    return await completer.future;
  }

  Future<bool> save() async {
    final completer = Completer<bool>();
    event.once('capture_save', (res) {
      if (res is String) {
        _tempFilePath = res;
        completer.complete(true);
      } else {
        completer.complete(false);
      }
    });
    event.emit('capture', 'save');
    return await completer.future;
  }

  /// [camera + image] capture
  Future<Uint8List?> capture() async {
    final completer = Completer<Uint8List?>();
    event.once('capture_res', (res) {
      if (res is List<int>) {
        final Uint8List image = Uint8List.fromList(res);
        completer.complete(image);
      } else {
        completer.complete(null);
      }
    });
    event.emit('capture', 'capture');
    return await completer.future;
  }

  Future<void> share() async {
    if(_tempFilePath == null) return;
    await Share.shareXFiles([XFile(_tempFilePath!)]);
  }
}
