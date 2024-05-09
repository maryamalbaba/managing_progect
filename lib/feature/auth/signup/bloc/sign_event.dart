// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sign_bloc.dart';

@immutable
sealed class SignEvent {}
class Signup_Sending extends SignEvent  {
  SignUpModel user;
  Signup_Sending({
    required this.user,
  });
}
