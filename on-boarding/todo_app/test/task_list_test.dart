import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/screens/todo_list_screen.dart'; // Import your TodoListScreen file

void main() {
  testWidgets('Display task list', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(MaterialApp(
      home: TodoListScreen(),
    ));

    // Verify that the task list is displayed
    expect(find.text('Todo List'), findsOneWidget);
  });
}
