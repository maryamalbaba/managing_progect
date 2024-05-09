// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:progectmanaging/core/resources/colors/mycolor.dart';

class CircleBear extends StatelessWidget {
  CircleBear({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        color: Color(0xFFFFF8C9),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xFF77C1C1),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                  // color: Color(0xFF77C1C1),
                  width: 130,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/head.png")))),
            ),
          ),
        ),
      ),
    ));
  }
}

class MyRichText extends StatelessWidget {
  const MyRichText({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.center,
        child: RichText(
          text: TextSpan(
            text: text1,
            children: [
              TextSpan(text: text2, style: TextStyle(color: accent)),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.HintText,
    required this.controller,
  }) : super(key: key);
final String HintText;
final  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 246,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff0A324D)),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: Color(0xff77C1C1)),
      child: TextField(
        controller: controller,
        decoration:  InputDecoration(
            hintText: HintText,
            hintStyle: TextStyle(color: Color(0xff0A324D), fontSize: 15),
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
