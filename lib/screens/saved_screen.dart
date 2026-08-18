import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import '../data/app_state.dart';
import '../data/questionnaire_data.dart';
import '../models/quiz_result.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ValueListenableBuilder<QuizResult?>(
          valueListenable: AppState.latestResult,
          builder: (context, result, _) {
            if (result == null) {
              return _buildEmptyState(context);
            }
            return _buildSavedContent(context, result);
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: AppTheme.secondaryButtonDecoration,
                  child: const Icon(Icons.arrow_back_ios_new_rounded, size: 18),
                ),
              ),
              const SizedBox(width: 12),
              Text('Saved Programs', style: AppTheme.headingLarge),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: AppColors.textSecondary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.border, width: 1.5),
                  ),
                  child: Icon(
                    Icons.bookmark_border_rounded,
                    size: 40,
                    color: AppColors.textSecondary.withValues(alpha: 0.4),
                  ),
                ),
                const SizedBox(height: 20),
                Text('No Saved Programs', style: AppTheme.headingMedium.copyWith(color: AppColors.textSecondary)),
                const SizedBox(height: 8),
                Text(
                  'Complete the assessment to see your\nrecommended programs here',
                  textAlign: TextAlign.center,
                  style: AppTheme.bodySmall.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSavedContent(BuildContext context, QuizResult result) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: AppTheme.secondaryButtonDecoration,
                    child: const Icon(Icons.arrow_back_ios_new_rounded, size: 18),
                  ),
                ),
                const SizedBox(width: 12),
                Text('Saved Programs', style: AppTheme.headingLarge),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${result.recommendations.length} recommended programs',
            style: AppTheme.bodySmall,
          ),
          const SizedBox(height: 20),
          ...result.recommendations.map((rec) {
            final dept = QuestionnaireData.departments.firstWhere(
              (d) => d.code == rec.program.departmentCode,
              orElse: () => QuestionnaireData.departments.first,
            );
            final deptColor = AppColors.departmentColors[dept.code] ?? AppColors.primary;
            final rankColors = {
              1: AppColors.primary,
              2: const Color(0xFFF97316),
              3: const Color(0xFF16A34A),
            };
            final rankColor = rankColors[rec.rank] ?? AppColors.textSecondary;

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: AppTheme.cardDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: rankColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.border, width: 1.5),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.shadow,
                                offset: Offset(2, 2),
                                blurRadius: 0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              '#${rec.rank}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(rec.program.name, style: AppTheme.bodyMedium),
                              const SizedBox(height: 2),
                              Text(dept.schoolName, style: AppTheme.bodySmall),
                            ],
                          ),
                        ),
                        Icon(Icons.bookmark_rounded, color: deptColor, size: 22),
                      ],
                    ),
                    if (rec.confidenceScore != null) ...[
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text('Confidence: ', style: AppTheme.bodySmall),
                          Text(
                            '${rec.confidenceScore!.round()}%',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 13,
                              color: rec.confidenceScore! >= 75
                                  ? AppColors.success
                                  : rec.confidenceScore! >= 50
                                      ? AppColors.warning
                                      : AppColors.error,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            );
          }),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
