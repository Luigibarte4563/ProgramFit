import 'package:flutter/foundation.dart';
import '../models/quiz_result.dart';
import 'storage_helper.dart';

class AppState {
  AppState._();

  static final ValueNotifier<QuizResult?> latestResult = ValueNotifier<QuizResult?>(null);

  static bool _initialized = false;

  static Future<void> initialize() async {
    if (_initialized) return;
    _initialized = true;

    final saved = await StorageHelper.loadQuizResult();
    if (saved != null) {
      latestResult.value = saved;
    }

    latestResult.addListener(() async {
      final result = latestResult.value;
      if (result != null) {
        await StorageHelper.saveQuizResult(result);
      } else {
        await StorageHelper.clearQuizResult();
      }
    });
  }

  static int get fitScore {
    if (latestResult.value == null) return 0;
    final result = latestResult.value!;
    final topScore = result.topDepartment.score;
    const maxPossible = 7;
    return ((topScore / maxPossible) * 100).round();
  }

  static bool get hasCompletedQuiz => latestResult.value != null;

  static Future<void> clearData() async {
    latestResult.value = null;
    await StorageHelper.clearQuizResult();
  }
}
