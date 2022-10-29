import 'package:e_commerce/constants.dart';
import 'package:e_commerce/views/input_card_details/view.dart';
import 'package:flutter/material.dart';

import '../../core/app_router/app_router.dart';
import '../../widgets/confirm_button.dart';
import '../../widgets/my_text.dart';

class BottomSheetItem extends StatelessWidget {
  const BottomSheetItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                data: "Card Holders Name",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F1F1),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextFormField(
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Adolphus Chris',
                          ))))),
              SizedBox(height: 10),
              MyText(
                data: "Card Number",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F1F1),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextFormField(
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: '1234 5678 9012 1314',
                          ))))),
              Row(
                children: [
                  Column(children: [
                    MyText(
                      data: "Date",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                            width: 134,
                            height: 56,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F1F1),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: '10/30',
                                ))))),
                  ]),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      MyText(
                        data: "CCV",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                              width: 134,
                              height: 56,
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F1F1),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: '123',
                                  ))))),
                    ],
                  )
                ],
              ),
              SizedBox(height: 240),
              Container(
                height: 80,
                width: 330,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: ConfirmButton(
                  onPressed: () =>
                      AppRouter.navigateAndPopAll(context, InputCardDetails()),
                  title: "Complete Order",
                  titleColor: kPrimaryColor,
                  verticalMargin: 10,
                  backGroundColor: kWhiteColor,
                  horizontalMargin: 60,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
