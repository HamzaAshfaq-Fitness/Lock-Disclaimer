import 'package:event_management_app/anonymous_screen/login.dart';
import 'package:event_management_app/utils/color_theme.dart';
import 'package:event_management_app/utils/custom_button.dart';
import 'package:event_management_app/utils/source_images.dart';
import 'package:event_management_app/utils/styling_text.dart';
import 'package:event_management_app/utils/welcome_page_text.dart';
import 'package:flutter/material.dart';

// List of icons
List <Widget> widgets = [
    Column(
     children: [
        Image(image: AssetImage(ImageAssets.welcomepic1)),
       SizedBox(
         height: 30,
       ),
       Text(WelcomePageText.UpcomingEvents,style: StylingText.HeadingOne,),
       SizedBox(
         height: 30,
       ),
       Text(WelcomePageText.UpcomingEventPara,style: StylingText.TextOne),
  ],
    ),
    Column(
    children: [
      Image(image: AssetImage(ImageAssets.welcomepic2)),
      Text(WelcomePageText.AddEvent,style: StylingText.HeadingOne,),
      Text(WelcomePageText.UpcomingEventPara,style: StylingText.TextOne),
    ],
  ),
    Column(
    children: [
      Image(image: AssetImage(ImageAssets.welcomepic3)),
      SizedBox(
        height: 30,
      ),
      Text(WelcomePageText.SearchEvent,style: StylingText.HeadingOne,),
      SizedBox(
        height: 30,
      ),
      Text(WelcomePageText.UpcomingEventPara,style: StylingText.TextOne),
    ],
  ),
];

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key ? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key ? key}): super(key: key);

  @override
  State <MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State <MyHomePage> with SingleTickerProviderStateMixin {

  late final TabController controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
        length: widgets.length,
        initialIndex: _index,
        vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Building UI
      body: Stack(
        alignment: Alignment.center,
        children: <Widget> [
          TabBarView(
              controller: controller,
              children: widgets),

          Positioned(
            bottom: 150,
            child: TabPageSelector(color: Colors.black38,
              selectedColor: ColorTheme.kPrimary,
              controller: controller,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 550),
                child: CustomButton(
                    fontText: 16,
                    textColor: Colors.white,
                    buttonText: 'Next',
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInPage()));
                    }
                ),
              ),
            ],
          ),

        ],
      ),

    );
  }
}
