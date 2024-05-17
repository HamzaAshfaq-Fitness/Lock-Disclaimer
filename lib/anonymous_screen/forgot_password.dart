import 'package:event_management_app/utils/color_theme.dart';
import 'package:event_management_app/utils/custom_button.dart';
import 'package:event_management_app/utils/custom_textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgot_password_otp.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ColorTheme.kPrimary,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Forgot Password',style: TextStyle(
          color: ColorTheme.kPrimary,
          fontSize: 22,
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text('Please enter the registered email address',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
                hintText: 'Enter your email',
                enterText: 'Email'
            ),
            SizedBox(
              height: 260,
            ),
            CustomButton(
                fontText: 16,
                textColor: Colors.white,
                buttonText: 'Continue',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordOtp()));
                }
            ),
          ],
        ),
      ),
    );
  }
}
