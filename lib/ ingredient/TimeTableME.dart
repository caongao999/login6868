import 'package:flutter/material.dart';

class TimeTableME extends StatefulWidget {
  const TimeTableME({super.key});

  @override
  State<TimeTableME> createState() => _TimeTableMEState();
}

class _TimeTableMEState extends State<TimeTableME> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sale Áo thun 12/12",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),),
                Text("Đã tạo 10 phút trước")
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Icon(Icons.people),
                  Text("9 peoples",
                  style: TextStyle(
                    fontSize: 18
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Icon(Icons.calendar_today),
                  Text("29/2/2024",
                    style: TextStyle(
                        fontSize: 18
                    ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
