// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Addtaskmodel {
String taskDescription;
String taskStatus;
num project_id;
  Addtaskmodel({
    required this.taskDescription,
    required this.taskStatus,
    required this.project_id,
  });


  Addtaskmodel copyWith({
    String? taskDescription,
    String? taskStatus,
    num? project_id,
  }) {
    return Addtaskmodel(
      taskDescription: taskDescription ?? this.taskDescription,
      taskStatus: taskStatus ?? this.taskStatus,
      project_id: project_id ?? this.project_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taskDescription': taskDescription,
      'taskStatus': taskStatus,
      'project_id': project_id,
    };
  }

  factory Addtaskmodel.fromMap(Map<String, dynamic> map) {
    return Addtaskmodel(
      taskDescription: map['taskDescription'] as String,
      taskStatus: map['taskStatus'] as String,
      project_id: map['project_id'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory Addtaskmodel.fromJson(String source) => Addtaskmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Addtaskmodel(taskDescription: $taskDescription, taskStatus: $taskStatus, project_id: $project_id)';

  @override
  bool operator ==(covariant Addtaskmodel other) {
    if (identical(this, other)) return true;
  
    return 
      other.taskDescription == taskDescription &&
      other.taskStatus == taskStatus &&
      other.project_id == project_id;
  }

  @override
  int get hashCode => taskDescription.hashCode ^ taskStatus.hashCode ^ project_id.hashCode;
}
