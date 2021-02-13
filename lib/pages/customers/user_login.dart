/*import 'package:events_services/constant/size_config.dart';
import 'package:events_services/widgets/app_bar.dart';
import 'package:events_services/widgets/my_scaffold.dart';
import 'package:events_services/widgets/raised_button.dart';*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_n/constant/size_config.dart';
import 'package:flutter_app_n/widgets/app_bar.dart';
import 'package:flutter_app_n/widgets/my_scaffold.dart';
import 'package:flutter_app_n/widgets/raised_button.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  String phoneNumber;
  String password;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Card(
        child: Scaffold(
          appBar: AppBarWidget(
            title: "تسجيل الدخول",
          ),
          body: Container(
            width: SizeConfig.widthMultiplier * 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: SizeConfig.widthMultiplier * 70,
                  child: TextField(
                    autofocus: false,
                    //   controller: _controllerFName,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10)
                    ],
                    onChanged: (value) => phoneNumber = value,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        hintText: "رقم الهاتف",
                        hintStyle: Theme.of(context).textTheme.caption,
                        prefixIcon: Icon(
                          Icons.phone_iphone,
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 2),
                Container(
                  width: SizeConfig.widthMultiplier * 70,
                  child: TextField(
                    autofocus: false,
                    //   controller: _controllerFName,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10)
                    ],
                    onChanged: (value) => phoneNumber = value,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        hintText: "كلمة المرور",
                        hintStyle: Theme.of(context).textTheme.caption,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 4,
                ),
                Container(
                    width: SizeConfig.widthMultiplier * 70,
                    child: RaisedButtonWidget(
                        title: "تسجيل الدخول", onPressed: () {})),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
