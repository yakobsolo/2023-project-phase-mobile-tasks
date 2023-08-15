import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/screens/todo_list_screen.dart';
import 'package:todo_app/main.dart';

void main() {
  testWidgets('Navigate from onboarding to task list', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreen(),
    ));

    expect(find.text("Get Started"), findsOneWidget);


    // Tap the onboarding button
    await tester.tap(find.text('Get Started'));
    await tester.pump(); // Wait for navigation

    // Verify that the task list screen is displayed
    expect(find.byType(TodoListScreen), findsOneWidget);
  });
}
