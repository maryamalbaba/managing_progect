// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

@immutable
sealed class TaskEvent {}
class Get_tasks_for_pro_event extends TaskEvent{
  List<gettasks>taskList;

 Get_tasks_for_pro_event.Get_tasks_for_pro_event({
    required this.taskList,
  });

}
class addtasks_event extends TaskEvent {
  Addtaskmodel task;
  addtasks_event({
    required this.task,
  });
  
  
}
