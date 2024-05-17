import 'package:event_management_app/utils/color_theme.dart';
import 'package:event_management_app/utils/source_images.dart';
import 'package:flutter/material.dart';

import '../utils/custom_button.dart';

class ResetPasswordSuccessful extends StatelessWidget {
  const ResetPasswordSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 120),
            child: Center(child: Image.asset(ImageAssets.passwordpic,height: 180,)),
          ),
          Padding(
            padding:EdgeInsets.only(top: 20),
            child: Text('Congrats!',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: ColorTheme.kPrimary,
            ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 30),
            child: Text('Your account is ready to use',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
            ),
          ),
            SizedBox(
              height: 220,
            ),
          Padding(
            padding:  EdgeInsets.only(left: 20,right: 20),
            child: CustomButton(
                fontText: 16,
                buttonText: 'Go to Login',
                textColor: Colors.white,
                onTap: (){},
            ),
          ),
        ],
      ),

    );
  }
}
