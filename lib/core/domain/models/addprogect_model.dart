// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class progectmodel {
String projectName;
String projectDescription;
String projectStatus;
String createdBy;
String lastModifiedBy;
num id;
String createDate;
  progectmodel({
    required this.projectName,
    required this.projectDescription,
    required this.projectStatus,
    required this.createdBy,
    required this.lastModifiedBy,
    required this.id,
    required this.createDate,
  });
  

  progectmodel copyWith({
    String? projectName,
    String? projectDescription,
    String? projectStatus,
    String? createdBy,
    String? lastModifiedBy,
    num? id,
    String? createDate,
  }) {
    return progectmodel(
      projectName: projectName ?? this.projectName,
      projectDescription: projectDescription ?? this.projectDescription,
      projectStatus: projectStatus ?? this.projectStatus,
      createdBy: createdBy ?? this.createdBy,
      lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
      id: id ?? this.id,
      createDate: createDate ?? this.createDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'projectDescription': projectDescription,
      'projectStatus': projectStatus,
      'createdBy': createdBy,
      'lastModifiedBy': lastModifiedBy,
      'id': id,
      'createDate': createDate,
    };
  }

  factory progectmodel.fromMap(Map<String, dynamic> map) {
    return progectmodel(
      projectName: map['projectName'] as String,
      projectDescription: map['projectDescription'] as String,
      projectStatus: map['projectStatus'] as String,
      createdBy: map['createdBy'] as String,
      lastModifiedBy: map['lastModifiedBy'] as String,
      id: map['id'] as num,
      createDate: map['createDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory progectmodel.fromJson(String source) => progectmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'progectmodel(projectName: $projectName, projectDescription: $projectDescription, projectStatus: $projectStatus, createdBy: $createdBy, lastModifiedBy: $lastModifiedBy, id: $id, createDate: $createDate)';
  }

  @override
  bool operator ==(covariant progectmodel other) {
    if (identical(this, other)) return true;
  
    return 
      other.projectName == projectName &&
      other.projectDescription == projectDescription &&
      other.projectStatus == projectStatus &&
      other.createdBy == createdBy &&
      other.lastModifiedBy == lastModifiedBy &&
      other.id == id &&
      other.createDate == createDate;
  }

  @override
  int get hashCode {
    return projectName.hashCode ^
      projectDescription.hashCode ^
      projectStatus.hashCode ^
      createdBy.hashCode ^
      lastModifiedBy.hashCode ^
      id.hashCode ^
      createDate.hashCode;
  }
}
