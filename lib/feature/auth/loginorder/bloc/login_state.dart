part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginSuccees extends LoginState {}
final class LoginErorr extends LoginState {}
