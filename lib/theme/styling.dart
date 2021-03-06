import 'package:flutter/material.dart';

import '../constant/size_config.dart';
import 'colors/my_colors.dart';

class AppTheme {
  AppTheme._();

  static final TextTheme lightTextTheme = TextTheme(
    caption: _textStyle,
    subtitle1: _subTextStyle1,
    subtitle2: _subTextStyle2,
    headline1: _headTextStyle1,
    headline2: _headTextStyle2,
    headline3: _headTextStyle3,
  );

  static final TextStyle _textStyle = TextStyle(
    color: MyColors.primary,
    fontSize: SizeConfig.textMultiplier * 1.50,
  );

  static final TextStyle _subTextStyle1 = _textStyle.copyWith(
    color: MyColors.primary,
    fontSize: SizeConfig.textMultiplier * 1.0,
  );
  static final TextStyle _subTextStyle2 = _textStyle.copyWith(
    color: MyColors.primary,
    fontSize: SizeConfig.textMultiplier * 1.2,
  );

  static final TextStyle _headTextStyle1 = _textStyle.copyWith(
    color: MyColors.primary,
    fontSize: SizeConfig.textMultiplier * 2.6,
  );
  static final TextStyle _headTextStyle2 = _textStyle.copyWith(
    color: MyColors.primary,
    fontSize: SizeConfig.textMultiplier * 2.0,
  );
  static final TextStyle _headTextStyle3 = _textStyle.copyWith(
    color: MyColors.primary,
    fontSize: SizeConfig.textMultiplier * 1.60,
  );
}
