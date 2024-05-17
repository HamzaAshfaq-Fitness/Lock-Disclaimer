import 'package:event_management_app/anonymous_screen/login.dart';
import 'package:event_management_app/utils/color_theme.dart';
import 'package:event_management_app/utils/custom_button.dart';
import 'package:event_management_app/utils/source_images.dart';
import 'package:flutter/material.dart';

class SelectIntrest extends StatefulWidget {
  const SelectIntrest({super.key});

  @override
  State<SelectIntrest> createState() => _SelectIntrestState();
}

class _SelectIntrestState extends State<SelectIntrest> {

  bool property=false;
  bool vehicle=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Column(
        children: [
          Row(
            children: [
                Padding(
                  padding: EdgeInsets.only(top: 150,left: 40),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        vehicle=false;
                        property=true;
                      });
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorTheme.kPrimary),
                        color: property==true?ColorTheme.kPrimary:Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image(image: AssetImage(ImageAssets.propertypic),color:property==true?Colors.white:ColorTheme.kPrimary,height: 100),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Property',style: TextStyle(
                            color: property==true?Colors.white:ColorTheme.kPrimary,
                            fontSize: 16,
                          ),),
                        ],
                      ),
                    ),
                  ),
                ) ,
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      vehicle=true;
                      property=false;
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorTheme.kPrimary),
                      color: vehicle==true?ColorTheme.kPrimary:Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage(ImageAssets.vehiclepic),color:vehicle==true?Colors.white:ColorTheme.kPrimary,height: 100),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Vehicle',style: TextStyle(
                          color: vehicle==true?Colors.white:ColorTheme.kPrimary,
                          fontSize: 16,
                        ),),
                      ],
                    ),
                  ),
                ),
              ) ,
            ],
          ),

          SizedBox(
            height: 320,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              textColor: Colors.white,
                fontText: 16,
                buttonText: 'Next',
               buttonColor: property==false && vehicle==false ?ColorTheme.kPrimary.withOpacity(0.5):ColorTheme.kPrimary,
               onTap:property==false && vehicle==false ? null : (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInPage()));
               },
            ),
          ),
        ],
      ),
    );
  }
}
