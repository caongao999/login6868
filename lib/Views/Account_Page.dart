import 'package:S_Booking_Demo/Views/SettingAccount.dart';
import 'package:flutter/material.dart';

class Account_Page extends StatefulWidget {
  const Account_Page({Key? key}) : super(key: key);

  @override
  State<Account_Page> createState() => _Account_PageState();
}

class _Account_PageState extends State<Account_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Page",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 22
        ),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => SettingAccount()));
            },
            icon: Icon(Icons.settings),
          ),
        ],
        backgroundColor: Colors.teal[300],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage('assets/background_mobile.jpg'),
                      fit: BoxFit.cover, // Có thể thay đổi tùy thuộc vào yêu cầu của bạn
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("Nguyễn Văn A",
                      style: TextStyle(
                        fontSize: 25
                      ),),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Đây là mô tả về bản thân tôi"),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 30,
                ),




              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 1000,
              padding: EdgeInsets.only(top: 0, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin:EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10
                      ) ,
                      child: Text("Mục đã tạo",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.teal[800]
                      ),),
                    ),
                  ), 
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(0),

                      itemCount: 8, // Number of items in the list
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: index == 0 ? 10 : 0), // Apply left padding only for items after the first one
                          child: Container(
                            margin: EdgeInsets.all(10),
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        );
                      },
                    )

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin:EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10
                      ) ,
                      child: Text("Lịch sử tham gia",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.teal[800]
                        ),),
                    ),
                  ),
                  Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(0),

                        itemCount: 8, // Number of items in the list
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(left: index == 0 ? 10 : 0), // Apply left padding only for items after the first one
                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          );
                        },
                      )

                  ),


                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}
