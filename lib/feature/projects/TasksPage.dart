import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progectmanaging/core/domain/models/addprogect_model.dart';
import 'package:progectmanaging/core/domain/models/project.dart';
import 'package:progectmanaging/core/domain/models/taskss/addtask.dart';
import 'package:progectmanaging/core/resources/colors/mycolor.dart';
import 'package:progectmanaging/feature/tasks/bloc/task_bloc.dart';

class TasksPage extends StatelessWidget {
  TasksPage({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskBloc(),
      //..add((Get_tasks_for_pro_event.Get_tasks_for_pro_event(taskList: []))),
      child: Builder(builder: (context) {
        return Scaffold(
          body: BlocBuilder<TaskBloc, TaskState>(
            builder: (context, state) {
              if (state is Succes_add_task_state) {
                print("Succesgettask_state");

                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: blackblue,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Tasks",
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<TaskBloc>().add(addtasks_event(
                              task: Addtaskmodel(
                                  taskDescription: '',
                                  taskStatus: "NEW",
                                  project_id: num.parse(id))));

                          ListView.builder(
                              itemCount: 3,
                              //state.taskList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 215,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: purple,
                                  ),
                                  child: Text("tt"
                                      //  state.taskList[index].description
                                      ),
                                );
                              });
                        },
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/plus.png"))),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                print("error ");
                return Center(
                    child: Text(
                  "some thing wrong",
                  style: TextStyle(color: Colors.pink),
                ));
              }
            },
          ),
        );
      }),
    );
  }
}
