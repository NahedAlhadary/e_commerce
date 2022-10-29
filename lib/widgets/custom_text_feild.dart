import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {Key? key,
      this.hintText,
      this.onChanged,
      this.validator,
      this.bordercolor})
      : super(key: key);
  final String? hintText;
  final void Function(String)? onChanged;
  final String Function(String?)? validator;
  final Color? bordercolor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: _getBorder(Colors.grey),
        focusedBorder: _getBorder(Colors.blue),
        errorBorder: _getBorder(Colors.red),
        focusedErrorBorder: _getBorder(Colors.deepOrange),
      ),

      onChanged: onChanged,
      // Email = Value;

      validator: validator,
    );
  }

  InputBorder _getBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
