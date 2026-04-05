import 'package:flutter_test/flutter_test.dart';
import 'package:goheung_school_app/main.dart';

void main() {
  testWidgets('앱 스모크 테스트', (WidgetTester tester) async {
    await tester.pumpWidget(const GoheungSchoolApp());
    expect(find.text('고흥고등학교'), findsWidgets);
  });
}
