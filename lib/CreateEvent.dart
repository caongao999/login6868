import 'package:S_Booking_Demo/%20ingredient/AppBarHome.dart';
import 'package:S_Booking_Demo/%20ingredient/TimeTable.dart';
import 'package:S_Booking_Demo/%20ingredient/TimeTableME.dart';
import 'package:S_Booking_Demo/%20ingredient/event_containerHome.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            AppBarHome(),
            SizedBox(height: 15,),
            Container(
              child: ElevatedButton(

                onPressed: () {

                },
                child: Text("Tạo lịch",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white
                  ),),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(30, 50),
                  primary: Colors.teal
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 10000,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Lịch đã tạo",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 32,
                    fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: 10,),
                  GridView.count(
                    childAspectRatio: 4,
                    mainAxisSpacing: 5,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 1,
                    shrinkWrap: true,
                    children: [
                      for(int i = 1; i <= 3; i++)
                        TimeTableME(),
                    ],),
                  SizedBox(height: 20,),
                  //Lịch của ban
                  Text("Lịch đang tham gia",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 32,
                        fontWeight: FontWeight.w700
                    ),),
                  SizedBox(height: 10,),
                  GridView.count(
                    childAspectRatio: 3.3,
                    mainAxisSpacing: 5,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 1,
                    shrinkWrap: true,
                    children: [
                      for(int i = 1; i <= 3; i++)
                        TimeTable(),
                    ],),
                ],
              )
            )
          ],
        ),
      )
    );
  }
}
