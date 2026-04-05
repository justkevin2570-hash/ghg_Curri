import 'package:flutter/material.dart';

enum SelectionType {
  general, // 일반선택
  career, // 진로선택
  convergence, // 융합선택
}

extension SelectionTypeExtension on SelectionType {
  String get label {
    switch (this) {
      case SelectionType.general:
        return '일반선택';
      case SelectionType.career:
        return '진로선택';
      case SelectionType.convergence:
        return '융합선택';
    }
  }

  Color get color {
    switch (this) {
      case SelectionType.general:
        return const Color(0xFF4CAF50);
      case SelectionType.career:
        return const Color(0xFF2196F3);
      case SelectionType.convergence:
        return const Color(0xFF9C27B0);
    }
  }
}

class Subject {
  final int? id;
  final String name;
  final int units;
  final String description;
  final List<String> keyPoints;
  final bool isRequired;
  final SelectionType type;

  const Subject({
    this.id,
    required this.name,
    required this.units,
    required this.description,
    required this.keyPoints,
    this.isRequired = false,
    this.type = SelectionType.general,
  });

  Map<String, dynamic> toMap(int categoryId) {
    return {
      'id': id,
      'category_id': categoryId,
      'name': name,
      'type': type.label,
      'units': units,
      'description': description,
      'is_required': isRequired ? 1 : 0,
    };
  }
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
  final int id;
  final String name;
  final IconData icon;
  final Color color;
  final List<GradeSubjects> grades;

  const SubjectCategory({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
    required this.grades,
  });

  GradeSubjects getGrade(int grade) =>
      grades.firstWhere((g) => g.grade == grade,
          orElse: () => GradeSubjects(grade: grade, subjects: []));
}
