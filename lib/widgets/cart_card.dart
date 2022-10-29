import 'package:flutter/material.dart';

import '../constants.dart';
import 'my_text.dart';

class CartCard extends StatefulWidget {
  const CartCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      })
      : super(key: key);
  final String image;
  final String title;
  final String description;

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: kGrayColor,
                  )),
              child: Image.asset(

                  getAsset(widget.image))),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  data: widget.title,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 4),
                MyText(
                  data: widget.description,
                  fontSize: 15,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(getAsset("Vector 6")),
              MyText(data: "20,000"),
            ],
          )
        ],
      ),
    );
  }
}
