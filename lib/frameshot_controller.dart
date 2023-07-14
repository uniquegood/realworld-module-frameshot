import 'dart:async';
import 'dart:typed_data';

import 'package:event_listener/event_listener.dart';

class FrameshotController {
  final EventListener event = EventListener();

  final String imageUrl;
  final String position;

  FrameshotController({
    required this.imageUrl,
    required this.position,
  });

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
      if (res is bool) {
        completer.complete(res);
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
}
