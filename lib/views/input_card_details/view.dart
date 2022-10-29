import 'package:e_commerce/views/input_card_details/bottom_sheet_item.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_text.dart';

class InputCardDetails extends StatelessWidget {
  const InputCardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Color(0xFFFFFFFF),
          context: context,
          builder: (context) => BottomSheetItem(),
        );
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(199, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: MyText(
        data: "Track order",
        fontSize: 24,
        fontWeight: FontWeight.w500,
        textAlign: TextAlign.center,
      ),
    );
  }
}
