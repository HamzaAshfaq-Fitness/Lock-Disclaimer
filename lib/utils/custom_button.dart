import 'package:event_management_app/utils/color_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({ this.buttonColor,required this.fontText,required this.buttonText, this.boarderRadius,
    required this.onTap, this.textColor,
    super.key});

  VoidCallback? onTap;
  Color? buttonColor;
  double? boarderRadius;
  Color? textColor;
  String buttonText;
  double fontText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color:buttonColor ,
          borderRadius: BorderRadius.circular(boarderRadius??30),
        ),
        child: Center(
          child: Text(buttonText,style: TextStyle(
            fontSize: fontText,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),),
        ),
      ),
    );
  }
}
