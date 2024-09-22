import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      home: const SafeArea(
          child: Scaffold(
        body: MyWidget(),
      ))));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        color: Colors.pink,
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Text(
            'Springfield',
            style: TextStyle(fontSize: 20, color: Colors.black54),
          ),
        ));
  }
}
