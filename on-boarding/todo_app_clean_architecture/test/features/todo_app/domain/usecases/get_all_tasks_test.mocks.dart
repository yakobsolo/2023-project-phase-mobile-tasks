// Mocks generated by Mockito 5.4.2 from annotations
// in todo_app_clean_architecture/test/features/todo/domain/usecases/get_all_tasks_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:dartz/dartz.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:todo_app_clean_architecture/core/errors/failures.dart' as _i5;
import 'package:todo_app_clean_architecture/features/todo_app/domain/entities/task.dart'
    as _i6;
import 'package:todo_app_clean_architecture/features/todo_app/domain/repository/task_repository.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [TaskRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskRepository extends _i1.Mock implements _i2.TaskRepository {
  MockTaskRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<_i4.Either<_i5.Failure, List<_i6.Task>>> getTasks() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTasks,
          [],
        ),
        returnValue:
            _i3.Stream<_i4.Either<_i5.Failure, List<_i6.Task>>>.empty(),
      ) as _i3.Stream<_i4.Either<_i5.Failure, List<_i6.Task>>>);
  @override
  _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>> getTask(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTask,
          [id],
        ),
        returnValue: _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>>.empty(),
      ) as _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>>);
  @override
  _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>> createTask(_i6.Task? task) =>
      (super.noSuchMethod(
        Invocation.method(
          #createTask,
          [task],
        ),
        returnValue: _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>>.empty(),
      ) as _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>>);
  @override
  _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>> updateTask(_i6.Task? task) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTask,
          [task],
        ),
        returnValue: _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>>.empty(),
      ) as _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>>);
  @override
  _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>> deleteTask(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteTask,
          [id],
        ),
        returnValue: _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>>.empty(),
      ) as _i3.Stream<_i4.Either<_i5.Failure, _i6.Task>>);
}