// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

@immutable
sealed class TaskEvent {}


class AddingTextField extends TaskEvent{}
class SubmitiedTask extends TaskEvent {
Addtaskmodel onTaskSubmitted;
  SubmitiedTask({
    required this.onTaskSubmitted,
  });
 
}
class Send_All_Tasks_for_One_pro extends TaskEvent{}
