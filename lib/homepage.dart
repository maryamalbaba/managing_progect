import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progectmanaging/core/resources/components/myWidget.dart';
import 'package:progectmanaging/feature/projects/Addproview.dart';

class homepage extends StatelessWidget {
   homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Container(
        height: 300,
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("homepage"),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Addproview()));
            }, child: Icon(Icons.abc)),
            SizedBox(height: 20,),
            add_task_inpro_container()
          ],
        ),
        
        )
        ,)
        ,
    );
  }
}