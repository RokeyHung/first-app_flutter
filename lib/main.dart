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
      margin: const EdgeInsets.all(20),
      child: TextButton.icon(
        onPressed: () {
          print('TextButton pressed');
        }, // if disable, set press to null
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          foregroundColor: Colors.pink,
          backgroundColor: Colors.green,
          // minimumSize: const Size(200, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 8,
          shadowColor: Colors.blue.withOpacity(0.5),
          side: const BorderSide(width: 1, color: Colors.indigo),
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.white,
        ),
        label: const Text(
          "Text Button",
          style: TextStyle(fontSize: 20),
        ),
        icon: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
