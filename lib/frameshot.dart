import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:realworld_module_frameshot/frameshot_show.dart';
import 'package:realworld_module_frameshot/frameshot_view.dart';

import 'core/frameshot_state_provider.dart';
import 'frameshot_controller.dart';
export 'frameshot_controller.dart';

class Frameshot extends ConsumerStatefulWidget {
  final FrameshotController controller;
  final double width;

  const Frameshot({
    super.key,
    required this.controller,
    required this.width
  });

  @override
  ConsumerState createState() => _FrameshotState();
}

class _FrameshotState extends ConsumerState<Frameshot> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(frameshotStateNotifierProvider.notifier)
          .initialize(widget.controller);
    });
    super.initState();
  }

  @override
  void dispose() {
    ref.invalidate(frameshotStateNotifierProvider);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(frameshotStateNotifierProvider);

    return state.when(
      initialize: () {
        return const Center(child: CircularProgressIndicator());
      },
      permission: () {
        return const Center(child: CircularProgressIndicator());
      },
      view: (imageUrl, controller) {
        return FrameShotView(
            frameImageUrl: imageUrl,
            frameWidth: widget.width,
            cameraController: controller,
            cameraIndex: widget.controller.getPosition == 'front' ? 1 : 0);
      },
      show: (image) {
        return FrameshotShow(image: image);
      },
    );
  }
}
