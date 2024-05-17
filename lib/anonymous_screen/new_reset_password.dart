// import 'package:event_management_app/anonymous_screen/reset_password_successful.dart';
import 'package:event_management_app/utils/custom_button.dart';
import 'package:event_management_app/utils/custom_textformfield.dart';
import 'package:flutter/material.dart';

import '../utils/color_theme.dart';

class NewResetPasswordPage extends StatefulWidget {
   NewResetPasswordPage({super.key});

  @override
  State<NewResetPasswordPage> createState() => _NewResetPasswordPageState();
}

class _NewResetPasswordPageState extends State<NewResetPasswordPage> {
   bool _obscureText=true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        foregroundColor: ColorTheme.kPrimary,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Reset Password',style: TextStyle(
          color: ColorTheme.kPrimary,
          fontSize: 22,
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 20),
              child: Text('Create a new password',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff09101D),
              ),),
            ),
            SizedBox(
              height: 10,
            ),

            CustomTextFormField(
                hintText: 'New password',
                enterText: 'New password',
              isObscureText: _obscureText,
              suffixIcon:GestureDetector(
                onTap: (){
                  setState(() {
                    _obscureText=!_obscureText;
                  });
                },
                child: Icon(_obscureText ?Icons.visibility:Icons.visibility),
              ),
            ),

            CustomTextFormField(
              hintText: 'Confirm New password',
              enterText: 'Confirm New password',
              isObscureText: _obscureText,
              suffixIcon:GestureDetector(
                onTap: (){
                  setState(() {
                    _obscureText=!_obscureText;
                  });
                },
                child: Icon(_obscureText ?Icons.visibility:Icons.visibility),
              ),
            ),
            SizedBox(
              height: 260,
            ),
            CustomButton(
                fontText: 16,
                buttonText: 'Save',
                textColor: Colors.white,
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetpasswordSuccessful()));
                },
            ),
          ],
        ),
      ),
    );
  }
}
