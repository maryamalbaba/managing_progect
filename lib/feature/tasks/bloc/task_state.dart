part of 'task_bloc.dart';

@immutable
sealed class TaskState {}

final class TaskInitial_state extends TaskState {}
final class Succesgettask_state extends TaskState {}
final class Errorgettask_state extends TaskState {}
final class Succes_add_task_state extends TaskState {
  List<Addtaskmodel> temp =[];
  Succes_add_task_state({required this.temp});
}

final class ErrorAddTask extends TaskState {}
final class SuccessAddTask extends TaskState {}