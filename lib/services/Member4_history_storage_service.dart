import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/Member4_timer_history.dart';

class HistoryStorageService {
  static const String _historyKey = 'noodle_timer_history';

  Future<void> saveHistory(TimerHistory history) async {
    final prefs = await SharedPreferences.getInstance();
    final existingHistory = prefs.getStringList(_historyKey) ?? [];

    existingHistory.add(jsonEncode(history.toJson()));

    await prefs.setStringList(_historyKey, existingHistory);
  }

  Future<List<TimerHistory>> getHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final storedHistory = prefs.getStringList(_historyKey) ?? [];

    return storedHistory.map((item) {
      return TimerHistory.fromJson(jsonDecode(item));
    }).toList();
  }

  Future<void> clearHistory() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_historyKey);
  }
}
