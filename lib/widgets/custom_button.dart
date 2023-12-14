import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap,required this.title});
  
  String title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        width: double.infinity,
        height: 60,
        color: Colors.blue,
        child: Center(child: Text(title,
        style: TextStyle(
          color: Colors.white,
        ),)),
      ),
    );
  }
}
