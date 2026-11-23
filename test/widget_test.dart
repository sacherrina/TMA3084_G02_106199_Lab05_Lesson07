import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bottom_navigator_bar_lab/main.dart';

void main() {
  testWidgets('Bottom navigation switches screens',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => TabModel(),
        child: const BottomNavLab(),
      ),
    );

    // Check the initial Home screen
    expect(find.text('Home'), findsWidgets);

    // Tap Alarm
    await tester.tap(find.byIcon(Icons.alarm));
    await tester.pumpAndSettle();
    expect(find.text('Alarm'), findsWidgets);

    // Tap Business
    await tester.tap(find.byIcon(Icons.business));
    await tester.pumpAndSettle();
    expect(find.text('Business'), findsWidgets);

    // Tap School
    await tester.tap(find.byIcon(Icons.school));
    await tester.pumpAndSettle();
    expect(find.text('School'), findsWidgets);
  });
}
