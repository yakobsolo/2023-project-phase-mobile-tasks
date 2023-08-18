import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app_clean_architecture/core/usecases/usecases.dart';
import 'package:todo_app_clean_architecture/features/todo_app/domain/entities/task.dart';
import 'package:todo_app_clean_architecture/features/todo_app/domain/repository/task_repository.dart';
import 'package:todo_app_clean_architecture/features/todo_app/domain/usecases/get_all_tasks.dart';

import 'get_all_tasks_test.mocks.dart';

@GenerateMocks([TaskRepository])
void main() {
  late GetAllTasks usecase;
  late MockTaskRepository mockTaskRepository;

  setUp(() {
    mockTaskRepository = MockTaskRepository();
    usecase = GetAllTasks(mockTaskRepository);
  });

  final tTasks = <Task>[];

  test('should get list of tasks from repository', () async {
    when(mockTaskRepository.getTasks()).thenAnswer((_) async* {
      yield Right(tTasks);
    });

    final result = usecase(NoParams());

    expect(result, emitsInOrder([Right(tTasks)]));

    verify(mockTaskRepository.getTasks());
    verifyNoMoreInteractions(mockTaskRepository);
  });
}