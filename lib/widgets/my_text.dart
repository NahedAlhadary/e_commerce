import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
   required this.data,
    this.textAlign,
    this.fontFamily,
    this.fontWeight,
    this.fontSize,
    this.color,
  }) : super(key: key);
  final String data;
  final TextAlign? textAlign;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
