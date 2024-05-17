import 'package:event_management_app/anonymous_screen/select_intrest.dart';
import 'package:flutter/material.dart';

import '../utils/color_theme.dart';
import '../utils/custom_calender.dart';
import '../utils/custom_drawer.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
         title: Text('Lockout Disclaimer'),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 15),
            child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectIntrest()));
                },
                child: Icon(Icons.notifications)),
          ),
        ],
        backgroundColor: ColorTheme.kPrimary,
      ),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      body: CustomCalender(),

    );
  }
}
