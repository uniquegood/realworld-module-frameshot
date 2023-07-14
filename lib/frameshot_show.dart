import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FrameshotShow extends ConsumerWidget {
  final Uint8List image;

  const FrameshotShow({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Image.memory(image);
  }
}
