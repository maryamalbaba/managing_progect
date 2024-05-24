// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:progectmanaging/core/domain/models/taskss/bases_model.dart';

class progectmodel extends ResultModel {
String name;
String description;
String status;
String createdBy;
String lastModified;
num id;
String createDate;
  progectmodel({
    required this.name,
    required this.description,
    required this.status,
    required this.createdBy,
    required this.lastModified,
    required this.id,
    required this.createDate,
  });

  progectmodel copyWith({
    String? name,
    String? description,
    String? status,
    String? createdBy,
    String? lastModified,
    num? id,
    String? createDate,
  }) {
    return progectmodel(
      name: name ?? this.name,
      description: description ?? this.description,
      status: status ?? this.status,
      createdBy: createdBy ?? this.createdBy,
      lastModified: lastModified ?? this.lastModified,
      id: id ?? this.id,
      createDate: createDate ?? this.createDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'status': status,
      'createdBy': createdBy,
      'lastModified': lastModified,
      'id': id,
      'createDate': createDate,
    };
  }

  factory progectmodel.fromMap(Map<String, dynamic> map) {
    return progectmodel(
      name: map['name'] as String,
      description: map['description'] as String,
      status: map['status'] as String,
      createdBy: map['createdBy'] as String,
      lastModified: map['lastModified'] as String,
      id: map['id'] as num,
      createDate: map['createDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory progectmodel.fromJson(String source) => progectmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'progectmodel(name: $name, description: $description, status: $status, createdBy: $createdBy, lastModified: $lastModified, id: $id, createDate: $createDate)';
  }

  @override
  bool operator ==(covariant progectmodel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.description == description &&
      other.status == status &&
      other.createdBy == createdBy &&
      other.lastModified == lastModified &&
      other.id == id &&
      other.createDate == createDate;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      description.hashCode ^
      status.hashCode ^
      createdBy.hashCode ^
      lastModified.hashCode ^
      id.hashCode ^
      createDate.hashCode;
  }
}
