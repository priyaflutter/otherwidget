import 'package:flutter/material.dart';

class fifth1 extends StatefulWidget {
  const fifth1({Key? key}) : super(key: key);

  @override
  State<fifth1> createState() => _fifth1State();
}

class _fifth1State extends State<fifth1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  AppBar(
      title: Text('GeeksforGeeks'),
      backgroundColor: Colors.greenAccent[400],
      centerTitle: true,
    ),
    );
  }
}
