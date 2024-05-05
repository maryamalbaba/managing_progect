part of 'sign_bloc.dart';

@immutable
sealed class SignState {}

final class SignInitial extends SignState {}
final class SignupSuccees extends SignState {}
final class SignupErorr extends SignState {}