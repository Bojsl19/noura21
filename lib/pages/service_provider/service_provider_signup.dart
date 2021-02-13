
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_n/constant/size_config.dart';
import 'package:flutter_app_n/widgets/app_bar.dart';
import 'package:flutter_app_n/widgets/my_scaffold.dart';
import 'package:flutter_app_n/widgets/raised_button.dart';

class ServiceProviderSignUp extends StatefulWidget {
  @override
  _ServiceProviderSignUpState createState() => _ServiceProviderSignUpState();
}

class _ServiceProviderSignUpState extends State<ServiceProviderSignUp> {
  String name;
  String phoneNumber;
  String email;
  String password;
  String phoneMarket;
  String location;
  String section;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Card(
        child: Scaffold(
          appBar: AppBarWidget(
            title: "مستخدم جديد",
          ),
          body: Container(
            width: SizeConfig.widthMultiplier * 100,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                  Container(
                    width: SizeConfig.widthMultiplier * 70,
                    child: TextField(
                      autofocus: false,
                      //   controller: _controllerFName,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      inputFormatters: [],
                      onChanged: (value) => name = value,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          hintText: "اسم التاجر",
                          hintStyle: Theme.of(context).textTheme.caption,
                          prefixIcon: Icon(
                            Icons.person,
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
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          hintText: "رقم صاحب المتجر",
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
                      onChanged: (value) => phoneMarket = value,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          hintText: "رقم المتجر للتواصل مع العملاء",
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
                      keyboardType: TextInputType.emailAddress,

                      onChanged: (value) => email = value,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          hintText: "البريد الإلكتروني",
                          hintStyle: Theme.of(context).textTheme.caption,
                          prefixIcon: Icon(
                            Icons.mail,
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
                      keyboardType: TextInputType.text,
                      inputFormatters: [],
                      onChanged: (value) => password = value,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
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
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                  Container(
                    width: SizeConfig.widthMultiplier * 70,
                    child: TextField(
                      autofocus: false,
                      //   controller: _controllerFName,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      inputFormatters: [],
                      onChanged: (value) => section = value,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          hintText: "القسم",
                          hintStyle: Theme.of(context).textTheme.caption,
                          prefixIcon: Icon(
                            Icons.keyboard_arrow_down,
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
                      keyboardType: TextInputType.text,
                      inputFormatters: [],
                      onChanged: (value) => location = value,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          hintText: "الموقع",
                          hintStyle: Theme.of(context).textTheme.caption,
                          prefixIcon: Icon(
                            Icons.pin_drop_rounded,
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
                      keyboardType: TextInputType.text,
                      inputFormatters: [],

                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          hintText: "الصورة",
                          hintStyle: Theme.of(context).textTheme.caption,
                          prefixIcon: Icon(
                            Icons.image,
                            color: Theme.of(context).primaryColor,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Container(
                    width: SizeConfig.widthMultiplier * 70,
                    child: TextField(
                      autofocus: false,
                      //   controller: _controllerFName,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      inputFormatters: [],

                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          hintText: "الشعار",
                          hintStyle: Theme.of(context).textTheme.caption,
                          prefixIcon: Icon(
                            Icons.image,
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
                          title: "تسجيل",
                          onPressed: () {
                            print("password :$password");
                          })),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
