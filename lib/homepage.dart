

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progectmanaging/core/domain/models/addprogect_model.dart';
import 'package:progectmanaging/core/domain/models/message_mode.dart';
import 'package:progectmanaging/core/domain/models/taskss/bases_model.dart';
import 'package:progectmanaging/core/domain/service/progects.dart';
import 'package:progectmanaging/core/resources/asset_helper/images_name.dart';
import 'package:progectmanaging/core/resources/colors/mycolor.dart';
import 'package:progectmanaging/core/resources/components/myWidget.dart';
import 'package:progectmanaging/feature/projects/Addproview.dart';

class homepage extends StatelessWidget {
  homepage({super.key});
  TextEditingController id_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          
          height: double.infinity,
          width: double.infinity,
          color: blackblue,
          child: Column(
            //scrossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
              width: 427,
              height: 502,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImagesName.osscam))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                   Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Addproview()));
                },
                child: create_container(text: "Create")),
            ),
            
             
             InkWell(
              onTap: () {
                 showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          ResultModel response;
                          return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15), ),
                                color: accent,
                              ),
                              width: double.infinity,
                              height: 360,
                              child: Column(
                                children: [
                                  SizedBox(height: 30,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Enter project's\n ID ..",style: TextStyle(color:blackblue,fontSize: 22 ),)
                                     ,Container(
                                      width: 100,
                                      height:100 ,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage(ImagesName.tree))
                                      ),
                                     )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: whitTextField(text:id_controller , hieght: 49),
                                  ),
                                  SizedBox(height: 40,),
                                  
                                 InkWell(
                                  onTap: ()async {
                                         response=  await join_progect(progectmodel(name: "", description: "", status: "", createdBy: "", lastModified: "", id: int.parse(id_controller.text), createDate: ""));
                                         if (response is MessageModel) {
                                           
                                 print("id has sended");
                                 
                                         } else {
                                           
                                         }
                                  },
                                  child: confirm())
                                ],
                              ));
                        });
         
              },
              child: DottedContainer()),
             
           
            ],
          ),
        ),
      ),
    );
  }
}
