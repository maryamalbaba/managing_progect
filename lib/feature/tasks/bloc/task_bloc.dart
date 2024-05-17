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
    on<Get_tasks_for_pro_event>((event, emit)
     async{
      dynamic result = await gettask_service ();
  if(result is bool){
    emit(Errorgettask_state());
  }
  else{
    emit(Succesgettask_state());
  }
    });
    
    on<addtasks_event>((event, emit)async{
      dynamic result2=await add_new_tasks(event.task);
      if(result2  ){emit(Succes_add_task_state(temp: temp));}
      else{emit(ErrorAddTask());}
    });
  }
}
