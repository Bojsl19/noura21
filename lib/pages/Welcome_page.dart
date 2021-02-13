
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app_n/constant/size_config.dart';
import 'package:flutter_app_n/utils/push_new_screen.dart';
import 'package:flutter_app_n/widgets/my_scaffold.dart';
import 'package:flutter_app_n/widgets/raised_button.dart';
import 'package:flutter_app_n/widgets/title_widget.dart';

import 'customers/user_authentication.dart';


class WelcomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Card(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Image.asset("assets/images/main.jpg"),
              TitleWidget(title: "أهلاً بك في نظمها"),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Container(
                  width: SizeConfig.widthMultiplier * 70,
                  child: RaisedButtonWidget(
                      title: "العملاء",
                      onPressed: () {


                        pushNewScreen(
                            context, UserAuthentication(title: "العملاء"));
                      })),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              TitleWidget(title: "أو"),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Container(
                  width: SizeConfig.widthMultiplier * 70,
                  child: RaisedButtonWidget(
                      title: "مقدم الخدمة",
                      onPressed: () {
                        pushNewScreen(
                            context, UserAuthentication(title: "مقدم الخدمة"));
                      })),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              FlatButton(
                onPressed: () {

                  FirebaseFirestore.instance.collection("users").add(
                      {
                        "name" : "NOURA",
                        "age" : 50,
                        "email" : "NOURA@example.com",
                        "address" : {
                          "street" : "street 24",
                          "city" : "Makkah"
                        }
                      }).then((value){
                    print(value.id);
                  });

                },
                child: Text(
                  "Add user",style: TextStyle(color: Colors.green,fontSize:30.1),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
