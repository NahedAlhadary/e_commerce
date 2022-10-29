import 'package:e_commerce/constants.dart';
import 'package:e_commerce/widgets/my_text.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton(
      {Key? key,
      required this.title,
      this.onPressed,
      this.backGroundColor,
      this.titleColor,
      this.horizontalMargin,
      this.verticalMargin,
         this.borderedColor})
      : super(key: key);

  final String title;
  final VoidCallback? onPressed;

  final Color? backGroundColor;
  final Color? titleColor;
  final double? horizontalMargin;
  final double? verticalMargin;
  final Color? borderedColor;

  BorderRadius get _borderRadius => BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalMargin ?? 0,
        horizontal: horizontalMargin ?? 0,
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: _borderRadius,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: MyText(
            data: title,
            fontSize: 18,
            color: titleColor ?? kWhiteColor,
          ),
          decoration: BoxDecoration(
            color: backGroundColor ?? kPrimaryColor,
            borderRadius: _borderRadius,
            border: Border.all(
              color: borderedColor ?? kPrimaryColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
