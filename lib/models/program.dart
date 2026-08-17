class Program {
  final String code;
  final String name;
  final String departmentCode;
  final bool isFlagship;

  const Program({
    required this.code,
    required this.name,
    required this.departmentCode,
    this.isFlagship = false,
  });
}

class ProgramScore {
  final Program program;
  int score;

  ProgramScore({required this.program, this.score = 0});
}
