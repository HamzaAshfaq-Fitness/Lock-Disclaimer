import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_theme.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({required this.hintText,this.controller, this.keyboardType,
     this.isObscureText,required this.enterText,this.suffixIcon,
     super.key});

   final bool? isObscureText;
   final TextInputType? keyboardType;
   final TextEditingController? controller;
   final String enterText;
   final String hintText;
   final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20,left: 40),
          child: Row(
            children: [
              Text(enterText,style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff2C3A4B).withOpacity(0.8),
              ),),
              Text('*',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xffDA1414).withOpacity(0.8),
                height: 0.5,
                letterSpacing: 3,
              ),),
            ],
          ),
        ),

        Padding(
          padding:  EdgeInsets.only(top: 10,left: 20,right: 20),
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              obscureText: isObscureText==true?true:false,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(width: 10,color: ColorTheme.kPrimary)
                ),
                hintText: hintText,
                suffixIcon: suffixIcon,
                hintStyle: TextStyle(color: Color(0xffDADEE3).withOpacity(0.9),fontWeight: FontWeight.w600,fontSize: 16),
                focusColor: Color(0xff808080),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
