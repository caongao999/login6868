import 'package:S_Booking_Demo/CreateEvent.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Account_Page.dart';
import 'My_Event.dart';
import 'homedemo.dart';
 
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page_index = 0; //khởi tạo đối tượng đang đứng có index là 0

  List<Widget> _pages = [  //khai báo LIST chứa các widget để chuyển trang
    HomeDemo(),
    CreateEvent(),
    Account_Page(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Nameee",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),),
              accountEmail: Text("Tài khoản của bạn"),
              currentAccountPicture: CircleAvatar(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image:DecorationImage(
                            image: NetworkImage('https://st5.depositphotos.com/62628780/63928/i/450/depositphotos_639282390-stock-photo-photography-passion-handsome-young-photographer.jpg'),
                            fit: BoxFit.cover)
                    ),
                  )
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://th.bing.com/th/id/OIP.1Oy_eAQkn9asD22w1thvCAAAAA?rs=1&pid=ImgDetMain',),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7),  // Điều chỉnh độ mờ tại đây, giữa 0.0 và 1.0
                        BlendMode.dstATop,
                      )

                  )
              ),

            ),
            TitleMenu("Trang chủ", Icons.home),
            TitleMenu("Chat", Icons.chat),
            TitleMenu("Hóa đơn", Icons.inventory_outlined),
            TitleMenu("Thông báo", Icons.notifications),
            TitleMenu("Tài khoản", Icons.settings),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.teal,
        backgroundColor: Colors.transparent,   //thay đổi theo thuộc tính của trang nền
        buttonBackgroundColor: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.home,
          color: Colors.white,),
          Icon(Icons.edit_calendar_outlined,
              color: Colors.white),
          Icon(Icons.account_circle,
              color: Colors.white)
        ],
        height: 50,
        index: _page_index,
        onTap: (_page_index) => setState(() => this._page_index = _page_index),
      ),

      body: _pages[_page_index], //page đi theo biến _page_index
    );
  }
}
ListTile TitleMenu(String title, IconData icon) {
  return ListTile(
    title: Text(title,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 22,
      ),),
    leading: Icon(icon,
      color: Colors.blueGrey,
    ),
  );
}