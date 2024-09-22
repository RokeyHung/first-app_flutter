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
      child: ElevatedButton.icon(
        onPressed: () {
          print("Elevated Button");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.grey,
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          side: const BorderSide(width: 1, color: Colors.yellow),
        ),
        label: const Text(
          "Elevated Button",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        icon: const Icon(
          Icons.home,
          size: 26,
          color: Colors.white,
        ),
      ),
    );
  }
}
