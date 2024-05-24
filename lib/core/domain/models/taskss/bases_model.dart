// ignore_for_file: public_member_api_docs, sort_constructors_first
class ResultModel {}

//class ResultModel extends ServieModel {}

class ErrorModel extends ResultModel {
  String Error_maseage;
  ErrorModel({
    required this.Error_maseage,
  });
}

class ExceptionModel extends ResultModel {
  String Exception_maseage;
  ExceptionModel({
    required this.Exception_maseage,
  });
}

class Listof_etc<T extends ResultModel> extends ResultModel {
  List<T> list;
  Listof_etc({
    required this.list,
  });
 }
