import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

// Links
//
// - https://docs-v2.riverpod.dev/docs/introduction/getting_started

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

@riverpod
String test(TestRef ref) {
  return 'Hello world';
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(ref.watch(testProvider)),
        ),
      ),
    );
  }
}
