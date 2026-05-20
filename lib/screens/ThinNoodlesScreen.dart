import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/Member4_timer_history.dart';
import '../providers/Member4_history_provider.dart';

class ThinNoodlesScreen extends ConsumerWidget {
  const ThinNoodlesScreen({super.key});

  Future<void> saveCookingHistory({
    required WidgetRef ref,
    required BuildContext context,
    required int durationInSeconds,
    required String preference,
  }) async {
    final history = TimerHistory(
      noodleType: 'Thin',
      durationInSeconds: durationInSeconds,
      completedAt: DateTime.now(),
      preference: preference,
    );

    await ref.read(historyStorageServiceProvider).saveHistory(history);
    ref.invalidate(historyProvider);

    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$preference saved to cooking history.')),
      );
    }
  }

  Widget buildOption({
    required WidgetRef ref,
    required BuildContext context,
    required String timeText,
    required int durationInSeconds,
    required String preference,
  }) {
    return InkWell(
      onTap: () {
        saveCookingHistory(
          ref: ref,
          context: context,
          durationInSeconds: durationInSeconds,
          preference: preference,
        );
      },
      child: Row(
        children: [
          Container(
            width: 200,
            height: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepOrange,
            ),
            child: Center(
              child: Text(
                timeText,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.yellowAccent[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                preference,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: CupertinoColors.white,
        title: const Text(
          "Thin Noodles",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildOption(
              ref: ref,
              context: context,
              timeText: "2 min",
              durationInSeconds: 120,
              preference: "Rushing mode",
            ),
            const SizedBox(height: 30),

            buildOption(
              ref: ref,
              context: context,
              timeText: "5 min",
              durationInSeconds: 300,
              preference: "Not-so rushing",
            ),
            const SizedBox(height: 30),

            buildOption(
              ref: ref,
              context: context,
              timeText: "10 min",
              durationInSeconds: 600,
              preference: "Soggy. Unyummy",
            ),
          ],
        ),
      ),
    );
  }
}
