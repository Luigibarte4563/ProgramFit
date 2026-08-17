class Department {
  final String code;
  final String name;
  final String schoolName;
  final String flagshipProgramCode;

  const Department({
    required this.code,
    required this.name,
    required this.schoolName,
    required this.flagshipProgramCode,
  });
}

class DepartmentScore {
  final Department department;
  int score;

  DepartmentScore({required this.department, this.score = 0});
}
