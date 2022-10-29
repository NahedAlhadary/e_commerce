import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

void showCustomSnackbar(
  BuildContext context, {
  required String title,
  Color? backgroundColor,
}) {
 ScaffoldMessenger.of(context).hideCurrentSnackBar();



  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(title),
    backgroundColor: backgroundColor ?? kPrimaryColor,
  ));
}
