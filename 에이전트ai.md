# 에이전트ai.md — AI 에이전트 가이드

## 프로젝트 목적
고흥고등학교 학생과 학부모가 개설 교과 및 과목 정보를 쉽게 확인할 수 있는 모바일/웹 앱.

---

## 앱 화면 흐름

```
SplashScreen (3초 후 자동 전환)
    ↓
HomeScreen — 7개 교과 카드 (세로 목록)
    ↓
SubjectListScreen — 학년 탭 (1학년 / 2학년 / 3학년)
    ↓
SubjectDetailScreen — 과목 상세 (단위수, 필수/선택, 소개, 학습 내용)
```

---

## 데이터 구조

```
SubjectCategory (교과)
  ├── name: 교과명 (국어, 영어 ...)
  ├── icon: 아이콘
  ├── color: 대표 색상
  └── grades: List<GradeSubjects>
        └── GradeSubjects (학년별 과목 묶음)
              ├── grade: 1 | 2 | 3
              └── subjects: List<Subject>
                    └── Subject (과목)
                          ├── name: 과목명
                          ├── units: 단위수
                          ├── description: 소개
                          ├── keyPoints: 주요 학습 내용
                          └── isRequired: 필수 여부
```

---

## 현재 데이터 상태

> 현재 `lib/data/sample_data.dart`의 모든 과목 데이터는 **샘플(임시 데이터)**입니다.
> 실제 고흥고등학교 교육과정 편성표로 교체가 필요합니다.

---

## UI 규칙

- 색상 변경 시 → `lib/theme/app_theme.dart` 수정
- 교과 카드 레이아웃 → `lib/widgets/category_card.dart`
- 화면 간 애니메이션: FadeTransition + SlideTransition 유지
- 홈 AppBar 색상: `AppTheme.primary` (#1A3A6B ~ #2D5A9E 그라데이션)

---

## 우선순위 작업 목록

1. 실제 교육과정 데이터로 `sample_data.dart` 교체
2. `assets/images/school_front.jpg` 학교 전경 사진 추가
3. 학교 로고 추가 (선택)
4. 안드로이드 빌드 및 배포 (선택)
