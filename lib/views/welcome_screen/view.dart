import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/app_router/app_router.dart';
import 'package:e_commerce/views/input_card_details/view.dart';
import 'package:e_commerce/views/order_list/view.dart';
import 'package:e_commerce/widgets/confirm_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 469,
            height: 450,
            color: kPrimaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(getAsset('minipic'))),
                Image.asset(getAsset('basket1')),
                SizedBox(height: 20),
                Image.asset(getAsset('Ellipse 1'))
              ],
            ),
          ),
          SizedBox(height: 30),
          MyText(
            data: "Get The Freshest Fruit Salad Combo",
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 20),
          MyText(
            data: "We deliver the best and freshest fruit salad in \n"
                " town. Order for a combo today!!!",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          SizedBox(height: 50),
          ConfirmButton(
              title: "Let’s Continue",
              verticalMargin: 10,
              horizontalMargin: 10,
              onPressed: () {

              }),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
