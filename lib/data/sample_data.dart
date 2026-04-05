import 'package:flutter/material.dart';
import '../models/subject.dart';

final List<SubjectCategory> subjectCategories = [
  SubjectCategory(
    name: '국어',
    icon: Icons.menu_book,
    color: const Color(0xFF4CAF50),
    grades: [
      GradeSubjects(grade: 1, subjects: [
        const Subject(
          name: '공통국어1',
          units: 4,
          description: '언어와 매체, 독서, 문학의 기초를 다지는 과목입니다.',
          keyPoints: ['언어의 특성 이해', '다양한 텍스트 읽기', '문학 작품 감상'],
          isRequired: true,
        ),
        const Subject(
          name: '공통국어2',
          units: 4,
          description: '화법과 작문, 문법의 기초를 학습하는 과목입니다.',
          keyPoints: ['효과적인 말하기·듣기', '글쓰기의 원리', '언어 규범 이해'],
          isRequired: true,
        ),
      ]),
      GradeSubjects(grade: 2, subjects: [
        const Subject(
          name: '화법과 언어',
          units: 4,
          description: '효과적인 의사소통 능력과 언어에 대한 심층적 이해를 기르는 과목입니다.',
          keyPoints: ['말하기·듣기 전략', '언어의 본질과 구조', '국어 문화 탐구'],
        ),
        const Subject(
          name: '독서와 작문',
          units: 4,
          description: '다양한 분야의 글을 읽고 주체적으로 쓰는 능력을 기르는 과목입니다.',
          keyPoints: ['독서 전략 및 방법', '다양한 장르 글쓰기', '비판적 읽기와 쓰기'],
        ),
      ]),
      GradeSubjects(grade: 3, subjects: [
        const Subject(
          name: '문학',
          units: 4,
          description: '문학 작품을 통해 삶과 세계를 이해하고 문학적 소양을 기르는 과목입니다.',
          keyPoints: ['시·소설·수필·희곡 감상', '문학사의 흐름 이해', '문학 창작 활동'],
        ),
        const Subject(
          name: '고전읽기',
          units: 2,
          description: '고전 작품을 통해 인문학적 소양과 비판적 사고력을 기르는 과목입니다.',
          keyPoints: ['고전 문학 읽기', '현재적 의미 탐구', '인문학적 성찰'],
        ),
      ]),
    ],
  ),
  SubjectCategory(
    name: '영어',
    icon: Icons.language,
    color: const Color(0xFF2196F3),
    grades: [
      GradeSubjects(grade: 1, subjects: [
        const Subject(
          name: '공통영어1',
          units: 4,
          description: '영어의 기본적인 듣기·말하기·읽기·쓰기 능력을 통합적으로 기르는 과목입니다.',
          keyPoints: ['기초 어휘 및 문법', '일상생활 표현', '기본 독해 능력'],
          isRequired: true,
        ),
        const Subject(
          name: '공통영어2',
          units: 4,
          description: '다양한 상황에서 영어로 의사소통하는 능력을 기르는 과목입니다.',
          keyPoints: ['의사소통 전략', '실용적 영어 표현', '중급 수준 독해'],
          isRequired: true,
        ),
      ]),
      GradeSubjects(grade: 2, subjects: [
        const Subject(
          name: '영어Ⅰ',
          units: 4,
          description: '영어로 다양한 주제를 이해하고 표현하는 능력을 심화하는 과목입니다.',
          keyPoints: ['심화 문법 이해', '다양한 주제 독해', '영어 작문 능력'],
        ),
        const Subject(
          name: '영어 회화',
          units: 2,
          description: '실제 생활에서 필요한 영어 회화 능력을 기르는 과목입니다.',
          keyPoints: ['발음 및 억양', '상황별 대화 연습', '영어 토론'],
        ),
      ]),
      GradeSubjects(grade: 3, subjects: [
        const Subject(
          name: '영어Ⅱ',
          units: 4,
          description: '고급 수준의 영어 이해 및 표현 능력을 기르는 과목입니다.',
          keyPoints: ['고급 어휘 및 문법', '학술적 영어 읽기', '논리적 영어 쓰기'],
        ),
        const Subject(
          name: '영어 독해와 작문',
          units: 4,
          description: '다양한 분야의 영어 글을 읽고 자신의 생각을 영어로 표현하는 과목입니다.',
          keyPoints: ['비문학 텍스트 독해', '논술형 영어 작문', '수능 대비 독해'],
        ),
      ]),
    ],
  ),
  SubjectCategory(
    name: '수학',
    icon: Icons.calculate,
    color: const Color(0xFFE91E63),
    grades: [
      GradeSubjects(grade: 1, subjects: [
        const Subject(
          name: '공통수학1',
          units: 4,
          description: '다항식, 방정식, 부등식 등 수학의 기본 개념을 학습하는 과목입니다.',
          keyPoints: ['다항식의 연산', '방정식과 부등식', '도형의 방정식'],
          isRequired: true,
        ),
        const Subject(
          name: '공통수학2',
          units: 4,
          description: '집합, 함수, 수열 등의 개념을 학습하는 과목입니다.',
          keyPoints: ['집합과 명제', '함수', '수열', '지수와 로그'],
          isRequired: true,
        ),
      ]),
      GradeSubjects(grade: 2, subjects: [
        const Subject(
          name: '수학Ⅰ',
          units: 4,
          description: '지수·로그함수, 삼각함수, 수열을 심화 학습하는 과목입니다.',
          keyPoints: ['지수함수와 로그함수', '삼각함수', '수열'],
        ),
        const Subject(
          name: '수학Ⅱ',
          units: 4,
          description: '극한, 미분, 적분의 기초 개념을 학습하는 과목입니다.',
          keyPoints: ['함수의 극한과 연속', '미분', '적분'],
        ),
      ]),
      GradeSubjects(grade: 3, subjects: [
        const Subject(
          name: '미적분',
          units: 4,
          description: '고급 미분과 적분을 학습하며 이공계 진학에 필요한 수학적 기초를 다지는 과목입니다.',
          keyPoints: ['극한의 심화', '여러 가지 미분법', '여러 가지 적분법'],
        ),
        const Subject(
          name: '확률과 통계',
          units: 4,
          description: '경우의 수, 확률, 통계를 학습하는 과목입니다.',
          keyPoints: ['순열과 조합', '확률의 뜻과 성질', '통계적 추정'],
        ),
      ]),
    ],
  ),
  SubjectCategory(
    name: '과학',
    icon: Icons.science,
    color: const Color(0xFF9C27B0),
    grades: [
      GradeSubjects(grade: 1, subjects: [
        const Subject(
          name: '통합과학1',
          units: 4,
          description: '물질, 에너지, 시스템, 변화의 관점에서 자연을 통합적으로 이해하는 과목입니다.',
          keyPoints: ['물질의 규칙성', '시스템과 상호작용', '변화와 다양성'],
          isRequired: true,
        ),
        const Subject(
          name: '통합과학2',
          units: 4,
          description: '환경과 에너지, 생물 다양성 등을 통합적 관점에서 학습하는 과목입니다.',
          keyPoints: ['환경과 에너지', '생물 다양성', '과학과 미래'],
          isRequired: true,
        ),
      ]),
      GradeSubjects(grade: 2, subjects: [
        const Subject(
          name: '물리학',
          units: 4,
          description: '역학, 전자기, 빛 등 물리 현상을 탐구하는 과목입니다.',
          keyPoints: ['힘과 운동', '전기와 자기', '빛과 파동'],
        ),
        const Subject(
          name: '화학',
          units: 4,
          description: '물질의 구조와 성질, 화학 반응을 탐구하는 과목입니다.',
          keyPoints: ['원소와 화합물', '화학 결합', '산화와 환원'],
        ),
      ]),
      GradeSubjects(grade: 3, subjects: [
        const Subject(
          name: '생명과학',
          units: 4,
          description: '세포, 유전, 진화 등 생명 현상을 탐구하는 과목입니다.',
          keyPoints: ['세포와 생명 활동', '유전의 원리', '생태계'],
        ),
        const Subject(
          name: '지구과학',
          units: 4,
          description: '지권, 수권, 기권, 우주 등 지구와 우주를 탐구하는 과목입니다.',
          keyPoints: ['지구의 구조와 운동', '대기와 해양', '별과 우주'],
        ),
      ]),
    ],
  ),
  SubjectCategory(
    name: '사회',
    icon: Icons.public,
    color: const Color(0xFFFF9800),
    grades: [
      GradeSubjects(grade: 1, subjects: [
        const Subject(
          name: '통합사회1',
          units: 4,
          description: '인간, 사회, 환경의 상호 관계를 통합적 관점에서 이해하는 과목입니다.',
          keyPoints: ['삶의 이해와 환경', '인간과 공동체', '사회 변화'],
          isRequired: true,
        ),
        const Subject(
          name: '통합사회2',
          units: 4,
          description: '정치, 경제, 문화 등의 관점에서 현대 사회를 이해하는 과목입니다.',
          keyPoints: ['민주주의와 법', '시장 경제', '문화와 다양성'],
          isRequired: true,
        ),
      ]),
      GradeSubjects(grade: 2, subjects: [
        const Subject(
          name: '한국사1',
          units: 3,
          description: '선사 시대부터 조선 전기까지의 한국 역사를 학습하는 과목입니다.',
          keyPoints: ['선사 시대와 고대', '고려의 성립과 변화', '조선 사회의 형성'],
          isRequired: true,
        ),
        const Subject(
          name: '한국사2',
          units: 3,
          description: '조선 후기부터 현대까지의 한국 역사를 학습하는 과목입니다.',
          keyPoints: ['조선 후기의 변화', '근대 국가 수립', '현대 한국의 발전'],
          isRequired: true,
        ),
      ]),
      GradeSubjects(grade: 3, subjects: [
        const Subject(
          name: '사회문화',
          units: 4,
          description: '사회·문화 현상을 탐구하고 사회문제를 해결하는 능력을 기르는 과목입니다.',
          keyPoints: ['사회·문화 현상의 이해', '사회 구조와 불평등', '사회 변동과 문화'],
        ),
        const Subject(
          name: '경제',
          units: 4,
          description: '경제의 기본 원리와 시장 경제의 작동 방식을 학습하는 과목입니다.',
          keyPoints: ['경제의 기본 문제', '시장과 가격', '국민 경제와 세계 경제'],
        ),
      ]),
    ],
  ),
  SubjectCategory(
    name: '예체능',
    icon: Icons.sports_soccer,
    color: const Color(0xFF00BCD4),
    grades: [
      GradeSubjects(grade: 1, subjects: [
        const Subject(
          name: '체육',
          units: 4,
          description: '다양한 신체 활동을 통해 건강과 체력을 증진하는 과목입니다.',
          keyPoints: ['건강 체력 운동', '구기 종목', '표현 활동'],
          isRequired: true,
        ),
        const Subject(
          name: '음악',
          units: 2,
          description: '음악의 기본 요소를 이해하고 음악적 감수성을 기르는 과목입니다.',
          keyPoints: ['가창 및 합창', '악기 연주', '음악 감상'],
          isRequired: true,
        ),
      ]),
      GradeSubjects(grade: 2, subjects: [
        const Subject(
          name: '운동과 건강',
          units: 4,
          description: '스포츠 활동을 통해 건강한 생활 습관을 형성하는 과목입니다.',
          keyPoints: ['건강 관리 방법', '스포츠 기능 향상', '스포츠 정신'],
        ),
        const Subject(
          name: '미술',
          units: 2,
          description: '미적 감각과 창의적 표현력을 기르는 과목입니다.',
          keyPoints: ['소묘와 채색', '디자인 기초', '미술 감상'],
        ),
      ]),
      GradeSubjects(grade: 3, subjects: [
        const Subject(
          name: '스포츠 생활',
          units: 4,
          description: '생활 스포츠를 통해 평생 체육 습관을 기르는 과목입니다.',
          keyPoints: ['생활 스포츠 참여', '안전한 운동 방법', '스포츠 문화'],
        ),
        const Subject(
          name: '음악 감상과 비평',
          units: 2,
          description: '다양한 음악 작품을 감상하고 비평적으로 이해하는 과목입니다.',
          keyPoints: ['음악사의 이해', '장르별 감상', '음악 비평 글쓰기'],
        ),
      ]),
    ],
  ),
  SubjectCategory(
    name: '교양',
    icon: Icons.lightbulb,
    color: const Color(0xFF795548),
    grades: [
      GradeSubjects(grade: 1, subjects: [
        const Subject(
          name: '진로와 직업',
          units: 2,
          description: '자신의 적성과 흥미를 탐색하여 진로를 설계하는 과목입니다.',
          keyPoints: ['자아 이해와 탐색', '직업 세계 이해', '진로 계획 수립'],
        ),
        const Subject(
          name: '생태와 환경',
          units: 2,
          description: '생태계와 환경 문제를 이해하고 환경 보전의 중요성을 인식하는 과목입니다.',
          keyPoints: ['생태계의 구조', '환경 오염과 대책', '지속 가능한 발전'],
        ),
      ]),
      GradeSubjects(grade: 2, subjects: [
        const Subject(
          name: '철학',
          units: 2,
          description: '철학적 사고를 통해 삶의 의미와 가치를 탐구하는 과목입니다.',
          keyPoints: ['철학적 사고의 방법', '존재와 인식', '윤리적 삶'],
        ),
        const Subject(
          name: '심리학',
          units: 2,
          description: '인간의 심리와 행동을 과학적으로 이해하는 과목입니다.',
          keyPoints: ['발달 심리', '학습과 기억', '사회적 행동'],
        ),
      ]),
      GradeSubjects(grade: 3, subjects: [
        const Subject(
          name: '논리학',
          units: 2,
          description: '논리적 사고와 비판적 추론 능력을 기르는 과목입니다.',
          keyPoints: ['논리의 기본 원리', '논증 분석', '오류 추론 파악'],
        ),
        const Subject(
          name: '교육학',
          units: 2,
          description: '교육의 원리와 방법을 탐구하는 과목입니다.',
          keyPoints: ['교육 철학', '교수·학습 이론', '교육 제도'],
        ),
      ]),
    ],
  ),
];
