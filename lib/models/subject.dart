import 'package:flutter/material.dart';

class Subject {
  final String name;
  final int units;
  final String description;
  final List<String> keyPoints;
  final bool isRequired; // 필수/선택

  const Subject({
    required this.name,
    required this.units,
    required this.description,
    required this.keyPoints,
    this.isRequired = false,
  });
}

class GradeSubjects {
  final int grade;
  final List<Subject> subjects;

  const GradeSubjects({
    required this.grade,
    required this.subjects,
  });
}

class SubjectCategory {
  final String name;
  final IconData icon;
  final Color color;
  final List<GradeSubjects> grades;

  const SubjectCategory({
    required this.name,
    required this.icon,
    required this.color,
    required this.grades,
  });

  GradeSubjects getGrade(int grade) =>
      grades.firstWhere((g) => g.grade == grade);
}
