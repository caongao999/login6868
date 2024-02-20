import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  static int resendTime = 30;
  late Timer countdownTimer;

  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }
  startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds:1), (Timer) {
      setState(() {
        resendTime = resendTime -1;
      });
      if(resendTime<1) {
        countdownTimer.cancel();
      }
    });
  }
  stopTimer() {
    if(countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/background_mobile.jpg",fit: BoxFit.contain,),
          Positioned.fill(
            child: Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child:Container(
                  height: double.infinity,
                  width: double.infinity,   //set full
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text("Nhập mã xác thực",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 34,
                              fontWeight: FontWeight.w700
                            ),),
                            Text("Mã đã được gửi đến email của bạn",
                            style: TextStyle(
                              fontSize: 16
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                              child: Form(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [
                                      SizedBox(
                                        height: 65,
                                        width: 58,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "0",
                                          ),
                                          onChanged: (value) {
                                            if(value.length ==1) { //hiệu ứng chuyển tiếp textfield
                                              FocusScope.of(context).nextFocus();
                                            }
                                          },
                                          style: Theme.of(context).textTheme.headline6,
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(1),
                                            FilteringTextInputFormatter.digitsOnly,
                                          ],



                                        ),
                                      ),
                                      SizedBox(
                                        height: 65,
                                        width: 58,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "0",
                                          ),
                                          onChanged: (value) {
                                            if(value.length ==1) { //hiệu ứng chuyển tiếp textfield
                                              FocusScope.of(context).nextFocus();
                                            }
                                          },
                                          style: Theme.of(context).textTheme.headline6,
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(1),
                                            FilteringTextInputFormatter.digitsOnly,
                                          ],



                                        ),
                                      ),
                                      SizedBox(
                                        height: 65,
                                        width: 58,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "0",
                                          ),
                                          onChanged: (value) {
                                            if(value.length ==1) { //hiệu ứng chuyển tiếp textfield
                                              FocusScope.of(context).nextFocus();
                                            }
                                          },
                                          style: Theme.of(context).textTheme.headline6,
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(1),
                                            FilteringTextInputFormatter.digitsOnly,
                                          ],



                                        ),
                                      ),
                                      SizedBox(
                                        height: 65,
                                        width: 58,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "0",
                                          ),
                                          onChanged: (value) {
                                            if(value.length ==1) { //hiệu ứng chuyển tiếp textfield
                                              FocusScope.of(context).nextFocus();
                                            }
                                          },
                                          style: Theme.of(context).textTheme.headline6,
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(1),
                                            FilteringTextInputFormatter.digitsOnly,
                                          ],



                                        ),
                                      ),


                                    ],

                                  )),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Chưa nhận được mã?",
                                  style: TextStyle(
                                      fontSize: 18
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                resendTime == 0
                                    ? InkWell(
                                  onTap: () {
                                    if (!countdownTimer.isActive) {
                                      startTimer();
                                      // Gọi hàm startTimer chỉ khi bộ đếm thời gian chưa hoạt động
                                    }
                                  },
                                  child: Text("Gửi lại!",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                )
                                    : SizedBox(),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            resendTime != 0
                                ? Text("Gửi lại mã OTP sau $resendTime giây")
                                : const SizedBox(),


                            SizedBox(
                              height: 100,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  animationDuration: Duration(),
                                  fixedSize: Size(325, 50),
                                  primary: Colors.teal
                                ),
                                child:Text(
                              "Xác nhận",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 24
                              ),
                            ))
                          ],
                        ),
                      )
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
