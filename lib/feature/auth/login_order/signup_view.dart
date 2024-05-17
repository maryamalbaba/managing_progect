import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progectmanaging/core/domain/models/signup_model.dart';
import 'package:progectmanaging/core/resources/colors/mycolor.dart';
import 'package:progectmanaging/core/resources/components/myWidget.dart';
import 'package:progectmanaging/feature/auth/app_manager/bloc/manager_bloc.dart';
import 'package:progectmanaging/feature/auth/signup/bloc/sign_bloc.dart';

TextEditingController firstnamecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
TextEditingController lasttnamecontroller = TextEditingController();

class SignupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Color(0xff0A324D),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                child: Stack(clipBehavior: Clip.none, children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 288,
                        height: 490,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Color(0xffD9D9D9),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 90,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: (150)),
                              child: Text(
                                'Username',
                                style: TextStyle(
                                    color: Color(0xff0A324D), fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyTextField(
                                HintText: "Example",
                                controller: firstnamecontroller),
                            SizedBox(
                              height: 5,
                            ),
                            MyTextField(
                                HintText: "Example",
                                controller: lasttnamecontroller),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: (190)),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    color: Color(0xff0A324D), fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyTextField(
                                HintText: "Example@gmail.com",
                                controller: emailcontroller),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 150),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    color: Color(0xff0A324D), fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyTextField(
                                HintText: "Enter Your Password ",
                                controller: passwordcontroller),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Icon(
                                      Icons.check,
                                      color: Colors.black,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          color: Color(0xff535353)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Remember me',
                                  style:
                                      TextStyle(color: whitegray, fontSize: 15),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: -50, left: 129, child: Center(child: CircleBear()))
                ]),
              ),
              SizedBox(
                height: 55,
              ),
              Center(
                child: Container(
                  width: 283,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color(0xffFFEACD)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFEACD)),
                    onPressed: () {
                      
                      context.read<SignBloc>().add(Signup_Sending(
                              user: SignUpModel(
                            email: emailcontroller.text,
                            password: passwordcontroller.text,
                            firstName: firstnamecontroller.text,
                            lastName: lasttnamecontroller.text,
                            role: 'USER',
                          )));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xff0A324D), fontSize: 25),
                    ),
                  ),
                ),
              ),
              BlocListener<SignBloc, SignState>(
                listener: (context, state) {
                  if(state is SignupSuccees){
                    context.read<appManagerBloc>().add(SigendUp_event());
                  }
                },
                child: MyRichText(
                    text1: "Already have an account ?   ", text2: "Login"),
              )
            ],
          ),
        );
      }),
    );
  }
}
