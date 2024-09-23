import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      home: const SafeArea(
        child: Scaffold(
          body: MyWidget(),
        ),
      ),
    ),
  );
}

// width, height
// fit
// alignment
// textDecoration
// clipBehavior
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      color: Colors.grey,
      child: Stack(
        fit: StackFit.loose,
        // alignment: Alignment.bottomRight,
        // textDirection: TextDirection.ltr,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
          Positioned(
            left: 30,
            bottom: -30,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
