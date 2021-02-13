import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final TextAlign textAlign;
  final Color color;
  final TextDirection textDirection;
  final TextOverflow overflow;

  const TitleWidget(
      {Key key,
        this.title,
        this.textAlign,
        this.color,
        this.textDirection,
        this.overflow})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline2.copyWith(
          fontWeight: FontWeight.bold,
          color: color ?? Theme.of(context).textTheme.headline2.color),
      textAlign: textAlign ?? TextAlign.start,
      overflow: overflow ?? TextOverflow.visible,
    );
  }
}
