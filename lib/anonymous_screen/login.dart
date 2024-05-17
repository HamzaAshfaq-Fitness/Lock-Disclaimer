import 'package:event_management_app/anonymous_screen/signup.dart';
import 'package:event_management_app/utils/custom_button.dart';
import 'package:event_management_app/utils/custom_textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/color_theme.dart';
import '../utils/source_images.dart';
import '../utils/styling_text.dart';
import 'forgot_password.dart';



class LogInPage extends StatefulWidget {
   LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(child: Image(image: AssetImage(ImageAssets.loginPic),height: 160,)),
              SizedBox(
                height: 25,
              ),
              Text('Login',
                style:TextStyle(
                  color: Color(0xff09101D),
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
             CustomTextFormField(
                 hintText: 'Enter your email',
                 enterText: 'Email'
             ),
              CustomTextFormField(
                  hintText: 'Enter your password',
                  enterText: 'Password',
                isObscureText: true,
              ),

              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 25),
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                        value: isChecked,
                        activeColor: Colors.redAccent,
                        onChanged: (newBool){
                        setState(() {
                          isChecked=newBool!;
                        });
                        }
                    ),
                  ),
                  Text('Remember me',style: TextStyle(
                    color: Color(0xff2C3A4B),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));

                    },
                      child: Text('Forgot Password?',style: StylingText.LoginPageText)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  fontText: 24,
                  textColor: Colors.white,
                  buttonText: 'Login',
                  onTap: (){
                  },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account?',style: TextStyle(
                    color: Color(0xff858C94),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),),
               SizedBox(
                 width: 8,
               ) ,
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                    },
                    child: Text('Sign up',style: TextStyle(
                      color: ColorTheme.kPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),),
                  ),

                ],
              ),

            ],
          ),
        ),

      ),

    );
  }
}
