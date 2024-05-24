// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progectmanaging/core/domain/models/taskss/bases_model.dart';
import 'package:progectmanaging/core/resources/asset_helper/images_name.dart';

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
  final TextEditingController controller;
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
        decoration: InputDecoration(
            hintText: HintText,
            hintStyle: TextStyle(color: Color(0xff0A324D), fontSize: 15),
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}

class whitTextField extends StatelessWidget {
  whitTextField({
    Key? key,
    required this.text,
    required this.hieght,
  }) : super(key: key);
  final TextEditingController text;
  final double hieght;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 271,
      height: hieght,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: white),
      child: TextField(
        maxLines: 10,
        decoration: InputDecoration(border: InputBorder.none),
        controller: text,
      ),
    );
  }
}

class create_container extends StatelessWidget {
  create_container({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 283,
      height: 60,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: biege),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: blackblue, fontSize: 30, fontWeight: FontWeight.w500),
      )),
    );
  }
}

class add_task_inpro_container extends StatelessWidget {
  add_task_inpro_container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      width: 600,
      height: 70,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: purple),
      child: Container(
        width: 500,
        height: 50,
        decoration: BoxDecoration(
          color: white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: 444,
            height: 40,
            decoration: BoxDecoration(),
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class confirm extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Center(
                  child: Container(
                    
                    width: 271,
                    height: 49,
                    decoration: BoxDecoration(
                      color:blackblue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                   
                      
                    
                      child: Center(child: Text("Confirm",style: TextStyle(color: white,fontSize: 25),),)),
                   
                  );
               
;
  }
}
class DottedContainer extends StatelessWidget {
  const DottedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 283,
      height: 60,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImagesName.dotted))),
  
  child: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: [
        Container(width: 35,height: 35,
         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImagesName.plus))),)
     
     ,Text("Join",style: TextStyle(color: white,fontSize: 25,fontWeight: FontWeight.w500),) ],
    ),
  ),  );
  }
}
