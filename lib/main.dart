import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progectmanaging/core/config/get_it_class.dart';
import 'package:progectmanaging/feature/auth/app_manager/bloc/manager_bloc.dart';
import 'package:progectmanaging/feature/auth/login_order/signup_view.dart';
import 'package:progectmanaging/feature/auth/login_order/viewlogin.dart';
import 'package:progectmanaging/feature/projects/TasksPage.dart';
import 'package:progectmanaging/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          appManagerBloc()..add(CheckTokenEvent()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BlocBuilder<appManagerBloc, appManagerState>(
              builder: (context, state) {
            if (state is appManagerInitial) {
              print("if");
              return SignupView();
            } else if (state is CheckTokenState) {
               print(" else if");
              return homepage();
              
             }
            // else if (state is HeLoggedIn || state is HeSigendUp_state) {
            //   return homepage();
            // }
            else {
               print(" else ");
              return LoginView();
            }

          })),
    );
  }
}
