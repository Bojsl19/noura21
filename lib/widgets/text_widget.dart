import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final TextOverflow overflow;
  final Color color;
  final FontWeight fontWeight;

  const TextWidget(
      {Key key,
        this.title,
        this.textAlign,
        this.textDirection,
        this.overflow,
        this.fontWeight,
        this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.caption.copyWith(
          color: color ?? Theme.of(context).textTheme.caption.color,
          fontWeight:
          fontWeight ?? Theme.of(context).textTheme.caption.fontWeight),
      textAlign: textAlign ?? TextAlign.start,
      overflow: overflow ?? TextOverflow.visible,
    );
  }
}
