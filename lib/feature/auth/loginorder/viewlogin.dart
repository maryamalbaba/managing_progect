import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progectmanaging/core/domain/models/login_model.dart';
import 'package:progectmanaging/core/resources/components/myWidget.dart';
import 'package:progectmanaging/feature/auth/loginorder/bloc/login_bloc.dart';
import 'package:progectmanaging/feature/auth/loginorder/signup_view.dart';
TextEditingController emailcontroller=TextEditingController();
TextEditingController passwordcontroller=TextEditingController();



class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ( context) =>LoginBloc(),
      child: Scaffold(
        backgroundColor: Color(0xff0A324D),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              child: Stack(clipBehavior: Clip.none, children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Align(alignment: Alignment.center,
                    child: Container(
                      width: 288,
                      height: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color(0xffD9D9D9),
                        // image: DecorationImage(
                        //     image: AssetImage('assets/Intersect.png')),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: (180)),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    color: Color(0xff0A324D), fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           ///////////////
                           MyTextField(HintText: "Example@gmail.com", controller: emailcontroller)
                            ,SizedBox(
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
        MyTextField(HintText: "Enter your password", controller: emailcontroller)
                            ,SizedBox(
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
                                
                                Text(
                                  'Remember me',
                                  style: TextStyle(
                                      color: Color(0xff0A324D), fontSize: 15),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -80,
                  left: 135,
                  child: Align(
                    alignment: Alignment.center,
                    child: CircleBear()),
                )
              ]),
            ),
            SizedBox(
              height: 80,
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
      context.read<LoginBloc>().add(SendLogin(user: LoginModel(email: emailcontroller.text, password: passwordcontroller.text ,


      )));
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupView()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Color(0xff0A324D), fontSize: 25),
                  ),
                ),
              ),
            ),
             MyRichText(text1: "Don’t have an account ?  ", text2: "Sign Up")
          ],
        ),
      ),
    );
  }
}
