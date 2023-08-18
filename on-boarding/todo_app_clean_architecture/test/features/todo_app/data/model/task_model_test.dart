import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_clean_architecture/features/todo_app/data/models/task_model.dart';

void main() {
  final tTaskModel = TaskModel(
    id: 1,
    title: 'Task 1',
    description: 'Task 1 description',
    dueDate: DateTime(2020, 1, 1),
    completed: false,
  );

  test('toJson should convert TaskModel to JSON', () async {
    final result = tTaskModel.toJson();

    final expectedJson = {
      'id': 1,
      'title': 'Task 1',
      'description': 'Task 1 description',
      'dueDate': '2020-01-01T00:00:00.000',
      'status': 'In Progress',
    };

    expect(result, expectedJson);
  });

  test('fromJson should convert JSON to TaskModel', () async {
    final result = TaskModel.fromJson(const {
      'id': 1,
      'title': 'Task 1',
      'description': 'Task 1 description',
      'dueDate': '2020-01-01T00:00:00.000',
      'status': 'In Progress',
    });

    expect(result, tTaskModel);
  });
}