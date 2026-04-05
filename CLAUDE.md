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

## 실행 명령어

```bash
# 크롬 브라우저 (웹 미리보기)
flutter run -d chrome

# Windows 앱
flutter run -d windows

# 실행 중 핫 리로드
r   # 코드 변경 즉시 반영
R   # 앱 완전 재시작
q   # 종료
```

---

## 코드 컨벤션

- `StatelessWidget` 선호 (상태 관리 불필요한 경우)
- 생성자는 `const` 사용 (`const Subject(...)`)
- 색상은 `AppTheme.*` 상수 참조 (`AppTheme.primary`, `AppTheme.background` 등)
- 화면 전환은 기존 `PageRouteBuilder` + `FadeTransition + SlideTransition` 패턴 유지

---

## 데이터 수정 방법

`lib/data/sample_data.dart` 의 `subjectCategories` 리스트를 편집한다.

```dart
Subject(
  name: '과목명',
  units: 4,           // 단위수
  description: '설명',
  keyPoints: ['학습 내용 1', '학습 내용 2'],
  isRequired: true,   // 필수: true, 선택: false (기본값)
)
```

---

## 주의사항

- 불필요한 패키지 추가 금지 (현재 flutter + cupertino_icons만 사용)
- 과도한 추상화 금지 (단순한 변경은 기존 파일 직접 수정)
- `build/`, `.dart_tool/` 폴더는 커밋하지 않음
- 커밋 전 `flutter analyze` 통과 필수 (pre-commit 훅이 자동 검사)
