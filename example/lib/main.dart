import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:realworld_module_frameshot/frameshot.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late FrameshotController controller;

  @override
  void initState() {
    controller = FrameshotController(
        position: 'front',
        imageUrl:
            'https://cdn.realworld.to/realworld-station/games/Mh3UNMGohvQmvdPoAoM8WA/images/01h548p4ygk46zjwcq4vg374jn-%E1%84%8B%E1%85%B5%E1%84%86%E1%85%B5%E1%84%8C%E1%85%B5-4.png');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Frameshot(controller: controller),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () async {
                            final image = await controller.capture();
                            print(image);
                          },
                          child: const Text("캡쳐"),
                        ),
                        TextButton(
                          onPressed: () async {
                            await controller.reset();
                          },
                          child: const Text("초기화"),
                        ),
                        TextButton(
                          onPressed: () async {
                            await controller.save();
                          },
                          child: const Text("저장"),
                        )
                      ],
                    )
                  ],
                );
              },
            );
          },
          child: const Text("프레임샷 열기"),
        ),
      ),
    );
  }
}
