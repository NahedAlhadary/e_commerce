import 'package:e_commerce/views/input_card_details/bottom_sheet_item.dart';
import 'package:e_commerce/views/order_list/view.dart';
import 'package:e_commerce/views/splash/view.dart';
import 'package:e_commerce/views/track_order/view.dart';
import 'package:e_commerce/views/welcome_screen/view.dart';

import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: BottomSheetItem(),
      title: 'E_Commerce',
      debugShowCheckedModeBanner: false,
    );
  }
}
