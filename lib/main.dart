import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      home: SafeArea(
          child: Scaffold(
        body: MyWidget(),
      ))));
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
                text:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "),
            TextSpan(
                text:
                    "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
          ]),
    );
  }
}
