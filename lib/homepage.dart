import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homepage extends StatelessWidget {
   homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Container(
        width: 100,
        height: 50,
        child:Text("homepage"),),),
    );
  }
}