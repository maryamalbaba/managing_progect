import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:progectmanaging/core/domain/models/addprogect_model.dart';
import 'package:progectmanaging/core/domain/models/project.dart';
import 'package:progectmanaging/core/domain/models/taskss/addtask.dart';
import 'package:progectmanaging/core/domain/models/taskss/gettasks.dart';

Future<progectmodel> addnew_progect(project pro) async {
  Dio dio = Dio();
  Response response = await dio.post(
      "https://projects-management-system.onrender.com/api/v1/projects",
      data: pro.toMap());

  if (response.statusCode == 200) {
    return response.data;
  } else {
    return progectmodel(
        projectName: 'projectName',
        projectDescription: 'projectDescription',
        projectStatus: 'projectStatus',
        createdBy: 'createdBy',
        lastModifiedBy: 'lastModifiedBy',
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
    Response response = await dio.get("https://dummyjson.com/products");

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
