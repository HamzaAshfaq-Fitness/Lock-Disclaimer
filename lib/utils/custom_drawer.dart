import 'package:event_management_app/utils/color_theme.dart';
import 'package:event_management_app/utils/source_images.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: ListView(
        children: [
          Column(
            children: [
               Stack(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(left: 230,top: 10),
                     child: IconButton(
                         onPressed: (){},
                         icon: Icon(Icons.close)
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(top: 60,left: 20),
                     child: Container(
                       height: 120,
                       width: 120,
                       child: CircleAvatar(
                         backgroundImage: AssetImage(ImageAssets.drawerpic),
                       ),
                     ),
                   ),
                   Positioned(
                     bottom: 0,
                       left: 100,
                       child: Container(
                         height: 40,
                         width: 40,
                         decoration: BoxDecoration(
                           color: Colors.black.withOpacity(0.5),
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: IconButton(
                             onPressed: (){},
                             icon: Icon(Icons.edit,color: ColorTheme.kPrimary,)
                         ),
                       ),
                   ),
                 ],
               ),

              Padding(
                padding: EdgeInsets.only(top: 10,right: 130),
                child: Text('John Smith',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),),
              ),

              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 1.5,
              ),
              ListTile(
                title: Text('Your Account',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.people_alt),
                title: Text('Personal Information',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notification',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.toggle_off),
                title: Text('Light & Dark',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),),
              ),

              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 1.5,
              ),
              ListTile(
                title: Text('Support',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.star_rate),
                title: Text('Rate Application',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Terms & Conditions',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.help_center),
                title: Text('Help',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),),
              ),

              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 1.5,
              ),
              ListTile(
                title: Text('Setting',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.key),
                title: Text('Change Password',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),),
              ),

              SizedBox(
              height: 20,
              ),

              ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text('Logout',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
