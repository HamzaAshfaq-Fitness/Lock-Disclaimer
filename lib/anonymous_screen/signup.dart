import 'package:event_management_app/anonymous_screen/login.dart';
import 'package:event_management_app/utils/custom_button.dart';
import 'package:event_management_app/utils/custom_textformfield.dart';
import 'package:event_management_app/utils/source_images.dart';
import 'package:flutter/material.dart';

import '../utils/color_theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage> {

  bool isChecked=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:SafeArea(
       child: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(
               height: 20,
             ),
             Center(
               child: Stack(
                 children: [
                   Image(image: AssetImage(ImageAssets.signuppic),height: 180,),
                   Positioned(
                     top: 130,
                     left: 35,
                     child: Text('Signup',
                       style:TextStyle(
                         color: Color(0xff09101D),
                         fontSize: 23,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             SizedBox(
               height: 10,
             ),
             CustomTextFormField(
                 hintText: 'Name',
                 enterText: 'Name'
             ),
             CustomTextFormField(
                 hintText: 'example@gmail.com',
                 enterText: 'Email'
             ),
             CustomTextFormField(
                 hintText: 'Enter Current Address',
                 enterText: 'Current Address'
             ),
             CustomTextFormField(
                 hintText: 'Password',
                 enterText: 'Password',
               isObscureText: true,
             ),
             CustomTextFormField(
                 hintText: 'Confirm Password',
                 enterText: 'Confirm Password',
               isObscureText: true,
             ),
             CustomTextFormField(
                 hintText: 'Enter Identification Number',
                 enterText: 'Identification Number',
               keyboardType: TextInputType.number,
             ),
             CustomTextFormField(
                 hintText: 'Tradesmen Licence',
                 enterText: 'Tradesmen Licence'
             ),
             CustomTextFormField(
                 hintText: 'Upload Trade Licence',
                 enterText: 'Upload Trades Licence',
               suffixIcon: Icon(Icons.cloud_upload_outlined),
             ),
             SizedBox(
               height: 10,
             ),
             CustomButton(
                 fontText: 18,
                 textColor: Colors.white,
                 buttonText: 'Sign Up',
                 onTap: (){}
             ),
             SizedBox(
               height: 10,
             ),
             Row(
               children: [
                 Checkbox(
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
                 Text('By Signing up,you agree to the',style: TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 16,
                 ),),
                 SizedBox(
                    width: 5,
                 ),
                 InkWell(
                   onTap: (){},
                   child: Text('Privacy Policy',style:TextStyle(
                     color:  Colors.redAccent,
                     fontSize: 16,
                     fontWeight: FontWeight.w500,
                   )),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Already have an account?',style: TextStyle(
                   color: Color(0xff858C94),
                   fontSize: 17,
                   fontWeight: FontWeight.w400,
                 ),),
                 SizedBox(
                   width: 5,
                 ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInPage()));
                   },
                   child: Text('Sign in',style: TextStyle(
                     color: ColorTheme.kPrimary,
                     fontWeight: FontWeight.w600,
                     fontSize: 16,
                   ),),
                 )
               ],
             ),
           ],
         ),
       ),
     ) ,
    );
  }
}
