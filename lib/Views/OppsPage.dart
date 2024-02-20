import 'package:flutter/material.dart';

class OppsPage extends StatefulWidget {
  const OppsPage({Key? key}) : super(key: key);

  @override
  State<OppsPage> createState() => _OppsPageState();
}

class _OppsPageState extends State<OppsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );

    _animation = Tween<Offset>(begin: Offset(0, 100), end: Offset.zero)
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 100, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SlideTransition(
              position: _animation,
              child: Text(
                "404",
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 100,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SlideTransition(
              position: _animation,
              child: Text(
                "Không tìm thấy!",
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SlideTransition(
              position: _animation,
              child: Container(
                child: Image.asset("y_assets/not-found.png"),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(600, 60),
                primary: Colors.teal[500],
              ),
              onPressed: () {
                if (_controller.isCompleted) {
                  _controller.reverse(); // Đảo ngược animation nếu đã hoàn thành
                  _controller.forward(); // Bắt đầu animation từ đầu
                } else {
                  _controller.forward(); // Bắt đầu animation từ đầu
                }
              },
              child: Text(
                "Thử lại",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
