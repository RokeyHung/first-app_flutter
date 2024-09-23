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

// Color
// Khi không/có child
// size: width & height
// alignment: Alignment, AlignmentDirectional, FractionalOffSet
// padding, margin
// decoration: color, shape, borderRadius, border
// transform
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(width: 2, color: Colors.red),
      ),
      transform: Matrix4.rotationZ(0.2),
      child: Text("data"),
    );
  }
}
