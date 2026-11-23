
import 'package:flutter_test/flutter_test.dart';
import 'package:bottom_navigator_bar_lab/main.dart';

void main() {
  testWidgets('Bottom navigation switches screens',
      (WidgetTester tester) async {
    await tester.pumpWidget(const BottomNavLab());

    expect(find.text('Home'), findsWidgets);

    await tester.tap(find.text('Alarm').first);
    await tester.pumpAndSettle();

    expect(find.text('Alarm'), findsWidgets);

    await tester.tap(find.text('Business').first);
    await tester.pumpAndSettle();

    expect(find.text('Business'), findsWidgets);

    await tester.tap(find.text('School').first);
    await tester.pumpAndSettle();

    expect(find.text('School'), findsWidgets);
  });
}
