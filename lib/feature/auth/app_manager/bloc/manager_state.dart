part of 'manager_bloc.dart';

@immutable
sealed class appManagerState {}

final class appManagerInitial extends appManagerState {}
class HeLoggedIn extends appManagerState {}

class SecondTime_stste extends appManagerState {}

class HeSigendUp_state extends appManagerState {}
