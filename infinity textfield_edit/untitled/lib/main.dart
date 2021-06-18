import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var myList = [];
  Business_logic controller = Get.put(Business_logic());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return GetMaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text('ff'),),
        body: ListView(
          shrinkWrap: true,
          children: [

            Obx(()=> ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.counter.value,
                itemBuilder: (BuildContext ctxt, int index){
                  return Row(
                    children: [
                      Expanded(
                         flex:2,
                          child: TextField()
                      ),
                      (index == controller.counter.value-1)?Expanded(
                        flex:1,
                        child: FlatButton(onPressed: (){
                          controller.increment();
                        },
                          child: Text('click me'),
                        ),
                      ):Container()

                    ],
                  );
                }
            ),



            ),

        ]

        ),
      ),
       );

  }
}

