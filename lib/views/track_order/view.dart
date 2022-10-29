import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/my_text.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Center(
          child: MyText(
            data: "Delivery Status",
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Image.asset(
          getAsset("Vector 7"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(getAsset("note")),
                SizedBox(width: 90),
                MyText(
                  data: "Order Taken",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 90),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(getAsset("check",

                    )),
                  ),
                  width:35 ,
                  height:35 ,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Image.asset(getAsset("removepreview")),
                SizedBox(width: 50),
                MyText(
                  data: "Order Is Being Prepared",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 50),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(getAsset("check",

                    )),
                  ),
                  width:35 ,
                  height:35 ,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Row(
              children: [
                Image.asset(getAsset("delivery-man")),
                SizedBox(width: 50),
                Column(
                  children: [
                    MyText(
                      data: "Order Is Being Delivered",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    MyText(
                      data: "Your delivery agent is coming",
                      fontSize: 12,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(width: 44),


                   Container(
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Image.asset(getAsset("call",

                       )),
                     ),
                    width:40,
                    height:40 ,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
               

                
              ],
            ),
            SizedBox(height: 50),
            Image.asset(getAsset("map")),
            SizedBox(height: 80),
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(getAsset("check",

                    )),
                  ),
                  width:50 ,
                  height:50 ,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                SizedBox(width: 44),
                MyText(
                  data: "Order Received",
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 55),
                Image.asset(getAsset("Ellipse 10")),
                SizedBox(width: 10),
                Image.asset(getAsset("Ellipse 10")),
                SizedBox(width: 10),
                Image.asset(getAsset("Ellipse 10")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
