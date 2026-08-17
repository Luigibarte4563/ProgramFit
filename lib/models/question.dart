class QuestionOption {
  final String letter;
  final String text;
  final String code;

  const QuestionOption({
    required this.letter,
    required this.text,
    required this.code,
  });
}

class Question {
  final int number;
  final String text;
  final List<QuestionOption> options;

  const Question({
    required this.number,
    required this.text,
    required this.options,
  });
}

class ConfirmationQuestion {
  final int number;
  final String text;
  final String programCode;

  const ConfirmationQuestion({
    required this.number,
    required this.text,
    required this.programCode,
  });
}
