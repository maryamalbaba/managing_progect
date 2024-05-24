import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progectmanaging/core/domain/models/addprogect_model.dart';
import 'package:progectmanaging/core/domain/models/project.dart';
import 'package:progectmanaging/core/resources/colors/mycolor.dart';
import 'package:progectmanaging/core/resources/components/myWidget.dart';
import 'package:progectmanaging/feature/projects/TasksPage.dart';
import 'package:progectmanaging/feature/projects/bloc/progectbloc_bloc.dart';

class Addproview extends StatelessWidget {
  Addproview({super.key});
  TextEditingController projectname_controller = TextEditingController();
  TextEditingController projectscript_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProgectblocBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: blackblue),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Project name",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                whitTextField(text: projectname_controller, hieght: 75),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Project Script",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: whitTextField(
                      text: projectscript_controller, hieght: 350),
                ),
                BlocListener<ProgectblocBloc, ProgectblocState>(
                  listener: (context, state) {
                    if (state is AddProjectstate) {
                      print("state is addpro");
                         Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TasksPage(id:state.id)));
                          
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          context.read<ProgectblocBloc>().add(
                            AddProjectevent(pro: project(projectName: projectname_controller.text, projectDescription: projectscript_controller.text, projectStatus: 'NEW',
                            
                            )
                          )); 
                          print("project add");
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>TasksPage()));
                        },
                        child: create_container(
                          text: 'Create',
                        )),
                  ),
                ),
                TextButton(
                    onPressed: () {
                   
                    },
                    child: Text(
                      "make tasks for this project",
                      style: TextStyle(color: white, fontSize: 15),
                    )),
              ],
            ),
          ),
        );
      }),
    );
  }
}
