import 'package:e_commerce/constants.dart';
import 'package:e_commerce/views/input_card_details/view.dart';
import 'package:e_commerce/widgets/cart_card.dart';
import 'package:e_commerce/widgets/confirm_button.dart';
import 'package:e_commerce/widgets/my_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/app_router/app_router.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Center(
          child: MyText(
            data: "My Basket",
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Image.asset(
          getAsset("Vector 7"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return CartCard(
                    image: cartItems[index]['image'],
                    title: cartItems[index]['title'],
                    description: cartItems[index]['description'],
                  );
                },
                separatorBuilder: (context, index) =>
                    Divider(color: kGrayColor),
                itemCount: cartItems.length,
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    MyText(
                      data: "Total",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        Image.asset(getAsset("Vector 6")),
                        MyText(
                          data: "60,000",
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20),
                ConfirmButton(
                  onPressed: ()=>AppRouter.navigateAndPopAll(context,InputCardDetails()),
                  title: "Checkout",
                  verticalMargin: 5,
                  horizontalMargin: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> cartItems = [
  {
    'title': 'Quinoa fruit salad',
    'image': 'dish5',
    'description': '2packs',
  },
  {
    'title': 'Melon fruit salad',
    'image': 'dish1',
    'description': '2packs',
  },
  {
    'title': 'Tropical fruit salad',
    'image': 'dish3',
    'description': '2packs',
  },
];
