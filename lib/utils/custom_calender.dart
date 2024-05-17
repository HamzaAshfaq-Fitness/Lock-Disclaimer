import 'package:event_management_app/utils/styling_text.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalender extends StatefulWidget {
   CustomCalender({super.key});

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {

  DateTime today=DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today=day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: TableCalendar(
                headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true),
                selectedDayPredicate: (day)=> isSameDay(day, today),
                onDaySelected: _onDaySelected,
                focusedDay: today,
                firstDay: DateTime.utc(2010,10,15),
                lastDay: DateTime.utc(2030,10,05),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Add new record',style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.add_outlined,size: 30,)
                ),
              ],
            ),
            Container(
              height: 230,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Property',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),),
                    trailing: Text('Wed 15 Jan 2023'),
                  ),
                  ListTile(
                    title: Text('Customer Name',style: StylingText.CalenderRecordHeadingOne,),
                    trailing: Text('John Smith',style: StylingText.CalenderRecordHeadingTwo),
                  ),

                  ListTile(
                    title: Text('ID Number',style: StylingText.CalenderRecordHeadingOne),
                    trailing: Text('123456789',style: StylingText.CalenderRecordHeadingTwo),
                  ),

                  ListTile(
                    title: Text('Address',style: StylingText.CalenderRecordHeadingOne),
                    trailing: Text('123456789',style: StylingText.CalenderRecordHeadingTwo),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              height: 230,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Vehicle',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),),
                    trailing: Text('Tue 10 Feb 2020'),
                  ),
                  ListTile(
                    title: Text('Make/Brand',style: StylingText.CalenderRecordHeadingOne,),
                    trailing: Text('Toyota',style: StylingText.CalenderRecordHeadingTwo),
                  ),

                  ListTile(
                    title: Text('Model',style: StylingText.CalenderRecordHeadingOne),
                    trailing: Text('2023',style: StylingText.CalenderRecordHeadingTwo),
                  ),

                  ListTile(
                    title: Text('Color',style: StylingText.CalenderRecordHeadingOne),
                    trailing: Text('White',style: StylingText.CalenderRecordHeadingTwo),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

          ],
        ),
      ),

    );
  }
}
