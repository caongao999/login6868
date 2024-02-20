import 'package:S_Booking_Demo/%20ingredient/TimeTable.dart';
import 'package:S_Booking_Demo/%20ingredient/event_containerHome.dart';
import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:S_Booking_Demo/%20ingredient/AppBarHome.dart';

class HomeDemo extends StatefulWidget {
  const HomeDemo({super.key});


  @override
  State<HomeDemo> createState() => _HomeDemoState();
}

class _HomeDemoState extends State<HomeDemo> {
  List<String> TitleN = [
    "Title1",
    "Title2",
    "Title3",
    "Title3",
    "Title3",
    "Title3",
    "Title3",
    "Title3",
    "Title3",
    "Title3",
  ];
  int valueTimeTable = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            AppBarHome(),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 300,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.indigoAccent[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  // Ink.image(image: NetworkImage('')),
                                  Text(TitleN[index],

                                    style: TextStyle
                                      (color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w500

                                    ),),
                                ],
                              ),
                            ),
                            Text(
                              "Đây là dòng mô tả, dfgkhsldgskldukzsulglkszbg",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                              ),)
                          ],
                        ),
                      );
                    },
                  )

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                  height: 10000,
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)
                    ),
                  ),
                  child: Column(
                    children: [
                      //Khối lịch của bạn
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Text("Lịch của bạn",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                              color: Colors.red
                          ),),
                      ),
                      GridView.count(
                        childAspectRatio: 3.4,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 1,
                        shrinkWrap: true,
                        children: [
                          for(int i = 1; i <= 5; i++)
                            TimeTable(),
                        ],),


                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 20, right: 20),
                        child: Divider(color: Colors.black38),
                      ),
                      //khối sự kiện/sản phẩm đang diễn ra
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Text("Các sự kiện đang diễn ra",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                              color: Colors.red
                          ),),
                      ),
                      GridView.count(
                        childAspectRatio: 0.68,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        children: [
                          for(int i = 1; i < 10; i++)
                            Event_ConHome()
                        ],),
                    ],
                  )
              ),
            )


          ],
        ),
      ),
    );
  }
}
