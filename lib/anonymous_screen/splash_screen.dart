import 'dart:async';
import 'package:event_management_app/anonymous_screen/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/color_theme.dart';
import '../utils/source_images.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) =>
                  WelcomePage()
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.logoImage1,color: ColorTheme.kPrimary),
            SizedBox(
              height: 70,
            ),
            Image.asset(ImageAssets.logoImage2,color: ColorTheme.kPrimary),

          ],
        ),
      ),
    );
  }
}
