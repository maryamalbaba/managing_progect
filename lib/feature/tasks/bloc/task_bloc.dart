import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:progectmanaging/core/domain/models/taskss/addtask.dart';
import 'package:progectmanaging/core/domain/models/taskss/gettasks.dart';
import 'package:progectmanaging/core/domain/service/progects.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitial_state()) {
     List<Addtaskmodel> temp =[];
     on<AddingTextField>((event, emit){
      emit(NewTextFieldCreated(tasks: temp));
     });
  
on<SubmitiedTask>((event,state){
  temp.last=event.onTaskSubmitted;
  emit(oneTaskSubmited());
  emit(NewTextFieldCreated(tasks: temp));
});


on<Send_All_Tasks_for_One_pro>((event,emit){
  
});
  }
}

