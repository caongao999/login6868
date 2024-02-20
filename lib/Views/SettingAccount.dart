import 'package:S_Booking_Demo/Views/LoginPage.dart';
import 'package:S_Booking_Demo/Views/WelcomePage.dart';
import 'package:flutter/material.dart';

class SettingAccount extends StatefulWidget {
  const SettingAccount({super.key});

  @override
  State<SettingAccount> createState() => _SettingAccountState();
}

class _SettingAccountState extends State<SettingAccount> {
  bool dark_white = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Setting",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w700
          ),),
          centerTitle: true,
          backgroundColor: Colors.teal,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tài khoản",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal,

                  ),),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepOrange[100]
                          ),
                          child: Icon(
                            Icons.account_box,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text("Thông tin tài khoản",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.cyan[100]
                          ),
                          child: Icon(
                            Icons.upcoming_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text("Cập nhật tài khoản",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 23
                          ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow[200]
                          ),
                          child: Icon(
                            Icons.change_circle,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text("Thay đổi mật khẩu",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 23
                          ),)
                      ],
                    ),
                  ),
                  Text("Cài đặt",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Colors.teal,

                    ),),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepOrange[100]
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text("Thông báo",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 23
                          ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.cyan[100]
                          ),
                          child: Icon(
                            Icons.language,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text("Ngôn ngữ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 23
                          ),),
                        SizedBox(width: 100,),
                        Text("Tiếng Việt", style: TextStyle(
                          fontSize: 22,
                          color: Colors.black54
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow[200]
                          ),
                          child: Icon(
                            Icons.change_circle,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text("Chế độ màu",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 23
                          ),),
                         SizedBox(width: 130 ),
                         IconButton(
                          icon: Icon(dark_white ? Icons.dark_mode : Icons.light_mode),
                          onPressed: () {
                            setState(() {
                              dark_white =    !dark_white;
                            });
                          },

                        )

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.cyan[100]
                          ),
                          child: Icon(
                            Icons.info,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text("Thông tin ứng dụng",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 23
                          ),),
                        SizedBox(width: 100,),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueGrey[100]
                          ),
                          child: Icon(
                            Icons.logout,
                            color: Colors.red[800],
                          ),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            _showAlertDialog(context);
                          },
                          child: Text("Đăng xuất",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 23
                            ),),
                        ),
                        SizedBox(width: 100,),

                      ],
                    ),
                  ),





                ],

              ),
            )
          ],
        )

    );
  }
}

Future<void> _showAlertDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Đăng xuất',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 24,
          color:Colors.red[800]
        ),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Bạn có chắc chắn quyết định này không?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => WelcomePage(),), (route) => false); // về lại trang login
            },
            child: Text('Đồng ý'),
          ),
          TextButton(
          onPressed: () {
          Navigator.of(context).pop(); // Đóng AlertDialog
      },
           child: Text('Thoát'),
          )
        ],
      );
    },
  );
}


