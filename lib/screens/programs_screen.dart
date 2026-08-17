import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import '../data/questionnaire_data.dart';
import '../models/department.dart';

class ProgramsScreen extends StatefulWidget {
  const ProgramsScreen({super.key});

  @override
  State<ProgramsScreen> createState() => _ProgramsScreenState();
}

class _ProgramsScreenState extends State<ProgramsScreen> {
  String? _expandedDept;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: QuestionnaireData.departments.length,
                itemBuilder: (context, index) {
                  final dept = QuestionnaireData.departments[index];
                  return _buildDepartmentSection(dept);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('All Programs', style: AppTheme.headingLarge),
                Text(
                  '${QuestionnaireData.programs.length} programs across ${QuestionnaireData.departments.length} schools',
                  style: AppTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDepartmentSection(Department dept) {
    final isExpanded = _expandedDept == dept.code;
    final programs = QuestionnaireData.getDepartmentPrograms(dept.code);
    final deptColor = AppColors.departmentColors[dept.code] ?? AppColors.primary;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _expandedDept = isExpanded ? null : dept.code;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: AppTheme.cardDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: deptColor.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: deptColor, width: 1.5),
                      ),
                      child: Center(
                        child: Text(
                          dept.code,
                          style: TextStyle(
                            color: deptColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dept.schoolName, style: AppTheme.bodyMedium),
                          Text(
                            '${programs.length} program${programs.length != 1 ? 's' : ''}',
                            style: AppTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    AnimatedRotation(
                      turns: isExpanded ? 0.5 : 0,
                      duration: const Duration(milliseconds: 250),
                      child: const Icon(Icons.expand_more_rounded, size: 24),
                    ),
                  ],
                ),
              ),
              if (isExpanded) ...[
                Container(
                  width: double.infinity,
                  height: 1,
                  color: AppColors.border,
                ),
                ...programs.asMap().entries.map((entry) {
                  final i = entry.key;
                  final program = entry.value;
                  final isLast = i == programs.length - 1;

                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                    decoration: isLast
                        ? null
                        : BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColors.border.withValues(alpha: 0.3),
                                width: 0.5,
                              ),
                            ),
                          ),
                    child: Row(
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: program.isFlagship
                                ? deptColor.withValues(alpha: 0.15)
                                : AppColors.background,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: program.isFlagship ? deptColor : AppColors.border,
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '${i + 1}',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                                color: program.isFlagship ? deptColor : AppColors.textSecondary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            program.name,
                            style: AppTheme.bodyMedium.copyWith(
                              fontSize: 13,
                              fontWeight: program.isFlagship ? FontWeight.w700 : FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 4),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
