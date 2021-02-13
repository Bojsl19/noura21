
import 'package:flutter/material.dart';
import 'package:flutter_app_n/pages/Welcome_page.dart';
import 'package:flutter_app_n/theme/colors/my_colors.dart';
import 'package:flutter_app_n/theme/styling.dart';

import 'package:firebase_core/firebase_core.dart';

import 'constant/size_config.dart';

void main() {

  runApp(MyApp());
}




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});


    });
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          locale: Locale('ar', ''),
          /*localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('ar', ''), // Arabic
          ],*/
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            textTheme: AppTheme.lightTextTheme,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            accentColor: MyColors.white,
            primaryColor: MyColors.primary,
            appBarTheme:
            AppBarTheme(iconTheme: IconThemeData(color: MyColors.primary)),
            fontFamily: "Jannat",
            cardTheme: CardTheme(
                color: MyColors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 1),
            buttonTheme: ButtonThemeData(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              buttonColor: MyColors.primary,
              splashColor: MyColors.white,
            ),
          ),
          home: WelcomePage(),
        );
      });
    });
  }
}
