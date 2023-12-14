import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.hintText,
      this.inputType,
      this.obsecureText = false,
      this.onChanged});

  String? hintText;
  bool? obsecureText;
  TextInputType? inputType;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obsecureText!,

      // if (data != 'nadeen') {
      //   return 'value is wrong';
      // }
      // },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            // borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8)),
        border: OutlineInputBorder(
          // borderSide: BorderSide(
          //   color: Colors.white,
          // ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
