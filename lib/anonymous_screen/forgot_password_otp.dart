import 'package:event_management_app/utils/custom_button.dart';
import 'package:event_management_app/utils/custom_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_theme.dart';
import 'new_reset_password.dart';

class ForgotPasswordOtp extends StatefulWidget {
  const ForgotPasswordOtp({super.key});

  @override
  State<ForgotPasswordOtp> createState() => _ForgotPasswordOtpState();
}

class _ForgotPasswordOtpState extends State<ForgotPasswordOtp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            CustomOtp(),
            SizedBox(
              height: 250,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20,right: 20),
              child: CustomButton(
                  fontText: 16,
                  buttonText: 'Verify',
                  textColor: Colors.white,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewResetPasswordPage()));
                  },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
