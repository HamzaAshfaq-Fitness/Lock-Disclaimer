import 'package:event_management_app/utils/color_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:pinput/pinput.dart';

class CustomOtp extends StatelessWidget {
   CustomOtp({super.key});

  TextEditingController pinController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 120),
          child: Center(
            child: Text('Code has been send to Email@gmail.com',style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 30),
          child: Center(
            child: Pinput(
              keyboardType: TextInputType.phone,
              controller: pinController,
              length: 4,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Resend code',style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: ColorTheme.kPrimary,
            ),),
            Text(' in'),
            Text(' 56',style: TextStyle(
              color: ColorTheme.kPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )),
            Text('s'),

          ],
        ),
      ],
    );
  }
}
