import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/Member2_timer_provider.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final timer = ref.watch(timerProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Noodle Timer"),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                "$timer seconds",
                style: TextStyle(fontSize: 30),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  ref.read(timerProvider.notifier).decrement();
                },
                child: Text("Decrease"),
              ),

              ElevatedButton(
                onPressed: () {
                  ref.read(timerProvider.notifier).reset();
                },
                child: Text("Reset"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}