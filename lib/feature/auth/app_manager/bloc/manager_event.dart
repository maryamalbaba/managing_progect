// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'manager_bloc.dart';

@immutable
sealed class appManagerEvent {}
class LoggedIn_event extends appManagerEvent {

}

class Second_event extends appManagerEvent {


}

class SigendUp_event extends appManagerEvent {

}
class CheckTokenEvent extends appManagerEvent {

}