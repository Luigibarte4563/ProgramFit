import 'department.dart';
import 'program.dart';

enum RecommendationBasis {
  topProgramInDepartment,
  secondProgramInDepartment,
  flagshipOfSecondDepartment,
  flagshipOfThirdDepartment,
}

class Recommendation {
  final int rank;
  final Program program;
  final RecommendationBasis basis;
  final double? confidenceScore;

  const Recommendation({
    required this.rank,
    required this.program,
    required this.basis,
    this.confidenceScore,
  });

  String get basisDescription {
    switch (basis) {
      case RecommendationBasis.topProgramInDepartment:
        return 'Highest-scoring program in your top department';
      case RecommendationBasis.secondProgramInDepartment:
        return '2nd highest-scoring program in your top department';
      case RecommendationBasis.flagshipOfSecondDepartment:
        return 'Flagship program of your 2nd-ranked department';
      case RecommendationBasis.flagshipOfThirdDepartment:
        return 'Flagship program of your 3rd-ranked department';
    }
  }
}

class QuizResult {
  final List<DepartmentScore> departmentScores;
  final List<ProgramScore>? programScores;
  final List<Recommendation> recommendations;
  final String topDepartmentCode;
  final bool isSingleProgramDepartment;

  const QuizResult({
    required this.departmentScores,
    this.programScores,
    required this.recommendations,
    required this.topDepartmentCode,
    required this.isSingleProgramDepartment,
  });

  DepartmentScore get topDepartment =>
      departmentScores.firstWhere((d) => d.department.code == topDepartmentCode,
          orElse: () => departmentScores.first);

  List<DepartmentScore> get top3Departments => departmentScores.take(3).toList();
}
