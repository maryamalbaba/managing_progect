// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'progectbloc_bloc.dart';

@immutable
sealed class ProgectblocEvent {}
class Getallproject extends ProgectblocEvent{
  
}
class EditProjectevent extends ProgectblocEvent{}
class Deletprojectevent extends ProgectblocEvent{}
class GetOneProjectevent extends ProgectblocEvent{}
class AddProjectevent extends ProgectblocEvent {
  project pro;
  AddProjectevent({
    required this.pro,
  });
}
