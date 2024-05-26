// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'package:progectmanaging/core/resources/asset_helper/Images_name.dart';
import 'package:progectmanaging/core/resources/colors/mycolor.dart';
import 'package:progectmanaging/feature/providerTask/dynamicList.dart';

class ListProvider with ChangeNotifier {
  List<dynamic> list = [];

  void addItem(dynamic item) {
    list.add(item);
    notifyListeners();
  }

  void deleteItem(int index) {
     list.removeAt(index);

    notifyListeners();
  }
}

class AddingtaskProvider extends StatefulWidget {
  AddingtaskProvider({
    Key? key,
    required this.id,
  }) : super(key: key);
  final num id;
  @override
  State<AddingtaskProvider> createState() => _AddingtaskProviderState();
}

class _AddingtaskProviderState extends State<AddingtaskProvider> {
  late GlobalKey<FormState> formKey;
  late TextEditingController controller;
  var taskItems;
  var counter;
  late DynamicList list1;
  void initState() {
    super.initState();
    formKey = GlobalKey();
    controller = TextEditingController();
    taskItems = Provider.of<ListProvider>(context, listen: false);
    list1 = DynamicList(taskItems.list);
    counter =0;
  }

  void dispose() {
    controller.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(color: blackblue),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImagesName.smallTringle))),
                ),
                Text(
                  "Tasks",
                  style: TextStyle(color: white, fontWeight: FontWeight.w600),
                ),
      
                Container(
                  padding: EdgeInsets.all(14),
                  width: 600,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: purple),
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
                        child: Form(
                            key: formKey,
                            child: TextFormField(
                              // autovalidateMode: AutovalidateMode.always,
                              onSaved: (val) {
                                taskItems.addItem(val);
                              },
                              validator: (val) {
                                if (val!.length > 0) {
                                  return null;
                                } else {
                                  return "Add a text";
                                }
                              },
                              controller: controller,
                            )),
                      ),
                    ),
                  ),
                ),
      
                InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState?.save();
                        print(formKey.currentState!.validate());
                        formKey.currentState?.save();
                        Provider.of<ListProvider>(context,listen: false).addItem(controller.text);

                      } else {}
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImagesName.plus))),
                    )),
                // ElevatedButton(onPressed: () {
                //   if (formKey.currentState!.validate()) {
                //     formKey.currentState?.save();
                //     print(formKey.currentState!.validate());
                //     formKey.currentState?.save();
                //    }
                //   //else {
      
                //   // }
      
                // }, child: Icon(Icons.add)),
                Consumer<ListProvider>(
                    builder: (context, Provider, ListTile) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: Provider.list.length,
                        itemBuilder: (context, index) {
                          return buildList(context, index);
                        }),
                  );
                })
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget buildList(BuildContext context, int index) {
    counter++;
    return Dismissible(
        key: Key(counter.toString()),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction) {
          setState(() {
          Provider.of<ListProvider>(context,listen: false).deleteItem(index);
            
          });
        },
        child: Container(
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(255, 180, 219, 167), width: 1)),
          child: ListTile(
            title: Text(list1.list[index]),
            // trailing: ,
          ),
        ));
  }
}
