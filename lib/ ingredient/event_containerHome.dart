import 'package:flutter/material.dart';

class Event_ConHome extends StatefulWidget {
  const Event_ConHome({Key? key}) : super(key: key);

  @override
  State<Event_ConHome> createState() => _Event_ConHomeState();
}

class _Event_ConHomeState extends State<Event_ConHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child:
          Container(
            //padding: EdgeInsets.only(left: 10,right: 10, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius:BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("y_assets/background_mobile.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 120,
                  // width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 3, top: 3),
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        height: 25,

                        width: 55,
                        child: Text("Event",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.white

                          ),),
                        decoration: BoxDecoration(
                            color: Colors.orange[800],
                            borderRadius: BorderRadius.circular(7)

                        ),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                          ),
                          child: Text("-90%",
                            style: TextStyle(
                                color: Colors.red
                            ),)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 5),
                  child: Text("TitleEvent",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.indigo,
                        fontWeight: FontWeight.w700
                    ),),
                ),
                Row(
                  children: [
                    Icon(Icons.price_change),
                    Text("123.0000",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500
                      ),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Divider(color: Colors.black87,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text("Đây là mô tả ngắn"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Icon(Icons.people),
                      Text("9 peoples"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today),
                      Text("29/2/2024"),
                    ],
                  ),
                )

              ],
            ),
          ),
      );
  }
}
