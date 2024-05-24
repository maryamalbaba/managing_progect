part of 'task_bloc.dart';

@immutable
sealed class TaskState {}

final class TaskInitial_state extends TaskState {}

class NewTextFieldCreated extends TaskState{

  List<Addtaskmodel>tasks;
   NewTextFieldCreated({
    required this.tasks,
  });
}
class oneTaskSubmited extends TaskState{}
class AllTaskSended extends TaskState{}