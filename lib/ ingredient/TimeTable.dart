import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  double _currentSliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey[100],
          border: Border.all(
            color: Colors.black38,
          )
        ),
        child:
            Padding(
              padding: const EdgeInsets.only( left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Text("Họp lần 1 quốc hội",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.teal
                        ),),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("Event",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18
                          ),),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ngày 22 tháng 12",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text("12AM",
                          style: TextStyle(
                              fontSize: 16
                          ),),
                      ),
                    ],
                  ),

                  Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceEve,
                    children: [
                      Text("Tiến độ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                      ),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Slider(
                          value: _currentSliderValue,
                          max: 100,
                          divisions: 5,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

        );

  }
}
