import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progectmanaging/core/domain/models/taskss/addtask.dart';
import 'package:progectmanaging/core/resources/colors/mycolor.dart';
import 'package:progectmanaging/feature/tasks/bloc/task_bloc.dart';

class TasksPage extends StatelessWidget {
  TextEditingController taskController = TextEditingController();
  TasksPage({super.key, required this.id});
  final num id;
  String temp = "";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskBloc(),
      //..add((Get_tasks_for_pro_event.Get_tasks_for_pro_event(taskList: []))),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Column(
            children: [
              FloatingActionButton(onPressed: () {
                if (taskController.text == "" || taskController.text == null) {
                 print("if because the controller is null");
                  context.read<TaskBloc>().add(AddingTextField());
                  taskController.clear();
                  
                } else {
                  temp = taskController.text;
                  context.read<TaskBloc>().add(SubmitiedTask(
                      onTaskSubmitted: Addtaskmodel(
                          taskDescription: taskController.text,
                          taskStatus: "NEW",
                          project_id: id)));
                }
              }),
              BlocBuilder<TaskBloc, TaskState>(
                builder: (context, state) {
                  if (state is NewTextFieldCreated) {
                      return Expanded(child: ListView.builder(
                    itemCount: state.tasks.length,
                    itemBuilder: (context,index){
                      return Container(
      padding: EdgeInsets.all(14),
      width: 600,
      height: 70,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: purple),
      child: Container(
        width: 500,
        height: 50,
        decoration: BoxDecoration(
          color: white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: 444,
            height: 40,
            decoration: BoxDecoration(),
            child: TextField(
              controller: (state.tasks.length-1==index)?taskController:null,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
        ),
      ),
    );
                    }));
                    
                  } else {
                    print("no tasks add");
                    return Container();
                  }
                
                },
              )
            ],
          ),
        );
      }),
    );
  }
}
