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

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
              height: 150,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 150,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
