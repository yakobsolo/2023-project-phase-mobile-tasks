import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/screens/add_edit_task_screen.dart'; // Import your AddEditTaskScreen file

void main() {
  testWidgets('AddEditTaskScreen displays UI elements', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget( const MaterialApp(
      home: AddEditTaskScreen(),
    ));

    // Verify that the app bar title is displayed
    expect(find.text('Create new task' ), findsOneWidget);

    // You can write similar tests to verify other UI elements such as text fields, buttons, etc.
  });
}
