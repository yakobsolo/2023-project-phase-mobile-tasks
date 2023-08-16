import 'package:dartz/dartz.dart' hide Task;
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';

import '../../../../core/usecases/usecases.dart';
import '../entities/task.dart';
import '../repository/task_repository.dart';

class GetTask extends UseCase<Task, GetTaskParams> {
  final TaskRepository _taskRepository;

  GetTask(this._taskRepository);

  @override
  Stream<Either<Failure, Task>> call(GetTaskParams params) {
    return _taskRepository.getTask(params.id);
  }
}

class GetTaskParams extends Equatable {
  final int id;

  const GetTaskParams({required this.id});

  @override
  List<Object?> get props => [id];
}