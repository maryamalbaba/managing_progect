import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:progectmanaging/core/config/get_it_class.dart';
import 'package:progectmanaging/core/domain/models/addprogect_model.dart';
import 'package:progectmanaging/core/domain/models/project.dart';
import 'package:progectmanaging/core/domain/models/taskss/addtask.dart';
import 'package:progectmanaging/core/domain/models/taskss/bases_model.dart';
import 'package:progectmanaging/core/domain/models/taskss/gettasks.dart';



Future<progectmodel> addnew_progect(project pro) async {
  Dio dio = Dio();
  print("ser addnew_progect");
  Response response = await dio.post(
      "https://projects-management-system.onrender.com/api/v1/projects",
      options: Options(headers: {
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJtYXJ5YW1tbW1tQGdtYWlsLmNvbSIsImlhdCI6MTcxNTk1MzE4NiwiZXhwIjoxNzE2NTU3OTg2fQ.jSyYB34tjPbDpmI9ppzAFaMdjOJ4MQH_0YhXXkG1UhI"
      }),
      data: pro.toMap());

  if (response.statusCode == 200) {
    print(response.data);
    progectmodel project = progectmodel.fromMap(response.data);
    return project;
  } else {
    print("-1");
    return progectmodel(
        name: 'projectName',
        description: 'projectDescription',
        status: 'projectStatus',
        createdBy: 'createdBy',
        lastModified: 'lastModifiedBy',
        id: -1,
        createDate: 'createDate');

  }
}

Future<bool> add_new_tasks(Addtaskmodel t) async {
  Dio dio = Dio();
  print("enter in service add new task");
  Response response = await dio.post(
      "https://projects-management-system.onrender.com/api/v1/tasks",
      data: t.toMap());
  if (response.statusCode == 200) {
    print("200 in service add new task");
    return true;
  } else {
    return false;
  }
}

  gettask_service() async {
  try {
    Dio dio = Dio();
    print("enter in service get task");
    Response response = await dio
        .get("https://projects-management-system.onrender.com/api/v1/tasks");

    if (response.statusCode == 200) {
      print("200 in service get task");
      List<gettasks> tasks = List.generate(response.data.length,
          (index) => gettasks.fromMap(response.data['products'][index]));
      return tasks;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}

Future<ResultModel> join_progect(progectmodel p) async {
  try {
    Dio dio = Dio();
    print("join_progect");
    Response response = await dio.post(
        "https://projects-management-system.onrender.com/api/v1/projects/{id}",
        options: Options(
          headers: {
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJtQGdtYWlsLmNvbSIsImlhdCI6MTcxNjQxMzY5NywiZXhwIjoxNzE3MDE4NDk3fQ.VgCaHX7effqW9pzjDYoxfyTtnjnV9Sr0lgjgYmBsjWM "
          },
        ),
        data: p.toMap()
        
        );

    if (response.statusCode == 200) {
      progectmodel project = progectmodel.fromMap(response.data);
      print(response.data);
      return project;
    } else {
      print(response.statusCode);
      return ErrorModel(Error_maseage: "error in join_project service");
      
    }
  } catch (e) {
    print("Exception");
    return ExceptionModel(
        Exception_maseage: "Exception in join_project service");
  }
}


//  ResultModel get_task_by_projectId()
//  {
// Dio dio=Dio();



// }