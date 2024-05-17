// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class gettasks {
num id;
String title;
String description;
String status;
String createDate;
String lastModified;
num createdBy;
num lastModifiedBy;
  gettasks({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.createDate,
    required this.lastModified,
    required this.createdBy,
    required this.lastModifiedBy,
  });

  gettasks copyWith({
    num? id,
    String? title,
    String? description,
    String? status,
    String? createDate,
    String? lastModified,
    num? createdBy,
    num? lastModifiedBy,
  }) {
    return gettasks(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
      createDate: createDate ?? this.createDate,
      lastModified: lastModified ?? this.lastModified,
      createdBy: createdBy ?? this.createdBy,
      lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'status': status,
      'createDate': createDate,
      'lastModified': lastModified,
      'createdBy': createdBy,
      'lastModifiedBy': lastModifiedBy,
    };
  }

  factory gettasks.fromMap(Map<String, dynamic> map) {
    return gettasks(
      id: map['id'] as num,
      title: map['title'] as String,
      description: map['description'] as String,
      status: map['status'] as String,
      createDate: map['createDate'] as String,
      lastModified: map['lastModified'] as String,
      createdBy: map['createdBy'] as num,
      lastModifiedBy: map['lastModifiedBy'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory gettasks.fromJson(String source) => gettasks.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'gettasks(id: $id, title: $title, description: $description, status: $status, createDate: $createDate, lastModified: $lastModified, createdBy: $createdBy, lastModifiedBy: $lastModifiedBy)';
  }

  @override
  bool operator ==(covariant gettasks other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.status == status &&
      other.createDate == createDate &&
      other.lastModified == lastModified &&
      other.createdBy == createdBy &&
      other.lastModifiedBy == lastModifiedBy;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      status.hashCode ^
      createDate.hashCode ^
      lastModified.hashCode ^
      createdBy.hashCode ^
      lastModifiedBy.hashCode;
  }
}
