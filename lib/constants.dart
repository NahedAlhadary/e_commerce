import 'dart:ui';
import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0XFFFFA451);
Color kBlackColor = Color(0xFF27214D);
Color kWhiteColor = Color(0xFFE5E5E5);
Color kGrayColor = Color(0xFFC2BDBD);
Color kDarkPrimaryColor = Color(0xFFF08626);

ThemeData theme =ThemeData(
  primaryColor: kPrimaryColor,
  backgroundColor: kWhiteColor
);

String getAsset(String image) => "assets/images/$image.png";

double getHeight(BuildContext context, double fraction,
    {bool subtractAppBar = true}) {
  final mediaQuery = MediaQuery.of(context);
  final appBarHeight = AppBar().preferredSize.height;
  final subtraction =
      subtractAppBar ? (mediaQuery.padding.top + appBarHeight) : 0;
  return (mediaQuery.size.height - subtraction) / fraction;
}

double getWidth(BuildContext context, double fraction) {
  final mediaQuery = MediaQuery.of(context);
  return (mediaQuery.size.width) / fraction;
}
