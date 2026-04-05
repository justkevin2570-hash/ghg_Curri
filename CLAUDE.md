# CLAUDE.md — 고흥고등학교 교과 안내 앱

## 프로젝트 개요
고흥고등학교 학생 및 학부모를 위한 교과 안내 Flutter 앱.
7개 교과(국어, 영어, 수학, 과학, 사회, 예체능, 교양)의 학년별 과목 정보를 제공한다.

---

## 핵심 파일 역할

| 파일 | 역할 |
|------|------|
| `lib/main.dart` | 앱 진입점, 라우팅 (`/` → Splash, `/home` → Home) |
| `lib/data/sample_data.dart` | 과목 데이터 (여기만 수정하면 앱 데이터 전체 반영) |
| `lib/models/subject.dart` | Subject / GradeSubjects / SubjectCategory 데이터 모델 |
| `lib/theme/app_theme.dart` | 색상, 폰트 등 디자인 시스템 |
| `lib/screens/home_screen.dart` | 홈 화면 (7개 교과 카드 세로 목록) |
| `lib/widgets/category_card.dart` | 교과 카드 위젯 (가로형) |

---

## 실패 사례 (하지 말 것)

### Color.withOpacity() 사용 금지
Dart 3에서 deprecated. 반드시 `.withValues(alpha: 0.x)` 사용.
```dart
// 틀림
color.withOpacity(0.3)

// 맞음
color.withValues(alpha: 0.3)
```
