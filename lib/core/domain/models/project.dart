// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:progectmanaging/core/domain/models/taskss/bases_model.dart';

class project extends ResultModel{

 
   String projectName;
      String projectDescription;
   String projectStatus;
  project({
    required this.projectName,
    required this.projectDescription,
    required this.projectStatus,
  });
   

  project copyWith({
    String? projectName,
    String? projectDescription,
    String? projectStatus,
  }) {
    return project(
      projectName: projectName ?? this.projectName,
      projectDescription: projectDescription ?? this.projectDescription,
      projectStatus: projectStatus ?? this.projectStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'projectDescription': projectDescription,
      'projectStatus': projectStatus,
    };
  }

  factory project.fromMap(Map<String, dynamic> map) {
    return project(
      projectName: map['projectName'] as String,
      projectDescription: map['projectDescription'] as String,
      projectStatus: map['projectStatus'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory project.fromJson(String source) => project.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'project(projectName: $projectName, projectDescription: $projectDescription, projectStatus: $projectStatus)';

  @override
  bool operator ==(covariant project other) {
    if (identical(this, other)) return true;
  
    return 
      other.projectName == projectName &&
      other.projectDescription == projectDescription &&
      other.projectStatus == projectStatus;
  }

  @override
  int get hashCode => projectName.hashCode ^ projectDescription.hashCode ^ projectStatus.hashCode;
}
