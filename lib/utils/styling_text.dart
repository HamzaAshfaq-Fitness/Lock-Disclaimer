import 'dart:ui';
import 'package:flutter/material.dart';
import 'color_theme.dart';

class StylingText{
  StylingText._();

  static const TextStyle HeadingOne=
  TextStyle(fontWeight: FontWeight.w600,fontSize: 26,color: ColorTheme.kPrimary,height: 1.5);

  static  TextStyle TextOne=
  TextStyle(fontWeight: FontWeight.w400,fontSize: 16,height: 1.5);

  static  TextStyle LoginPageText=
  TextStyle(fontWeight: FontWeight.w600,fontSize: 16, color: ColorTheme.kPrimary,);

  static const TextStyle CalenderRecordHeadingOne=
      TextStyle(fontWeight: FontWeight.w300,fontSize: 16);

  static  TextStyle CalenderRecordHeadingTwo=
  TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey.shade400);


}