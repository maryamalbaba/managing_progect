// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'progectbloc_bloc.dart';

@immutable
sealed class ProgectblocState {}

final class ProgectblocInitial extends ProgectblocState {}
class Getallprojectstate extends ProgectblocEvent{
  
}
class EditProjectstate extends ProgectblocState{}
class Deletprojectstate extends ProgectblocState{}
class GetOneProjectstate extends ProgectblocState{}
class AddProjectstate extends ProgectblocState {
  String id;
  AddProjectstate({
    required this.id,
  });
}
