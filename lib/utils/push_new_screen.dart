import 'package:flutter/material.dart';

pushNewScreen(context, Widget widget) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}
