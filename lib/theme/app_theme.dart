import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF1A3A6B);
  static const Color accent = Color(0xFFFFB800);
  static const Color background = Color(0xFFF5F7FA);
  static const Color cardWhite = Colors.white;
  static const Color textDark = Color(0xFF1A1A2E);
  static const Color textGrey = Color(0xFF6B7280);

  // 교과별 색상
  static const Map<String, Color> subjectColors = {
    '국어': Color(0xFF4CAF50),
    '영어': Color(0xFF2196F3),
    '수학': Color(0xFFE91E63),
    '과학': Color(0xFF9C27B0),
    '사회': Color(0xFFFF9800),
    '예체능': Color(0xFF00BCD4),
    '교양': Color(0xFF795548),
  };

  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: background,
        appBarTheme: const AppBarTheme(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        tabBarTheme: const TabBarThemeData(
          labelColor: primary,
          unselectedLabelColor: textGrey,
          indicatorColor: accent,
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          unselectedLabelStyle: TextStyle(fontSize: 15),
        ),
        cardTheme: CardThemeData(
          elevation: 3,
          shadowColor: Colors.black.withValues(alpha: 0.12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      );
}
