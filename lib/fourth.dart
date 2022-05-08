import 'package:flutter/material.dart';
import 'package:otherwidget/fifth.dart';

class fourth1 extends StatefulWidget {
  const fourth1({Key? key}) : super(key: key);

  @override
  State<fourth1> createState() => _fourth1State();
}

class _fourth1State extends State<fourth1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ),

      //ListWhellscrollview.........

      body: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("ListWheelScrollView",style: TextStyle(fontSize: 30),),
        Container(
        height: 500,
        decoration: BoxDecoration(color: Colors.yellow),
        child: ListWheelScrollView(
          itemExtent: 100,
          // clipToSize: true,
          diameterRatio: 1,
          offAxisFraction: -0.4,
          magnification: 50,
          children: [
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Text(
                "demo",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Text(
                "demo",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Text(
                "demo",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Text(
                "demo",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Text(
                "demo",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Text(
                "demo",
                style: TextStyle(fontSize: 50),
              ),
            ) ,
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Text(
                "demo",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Text(
                "demo",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Text(
                "demo",
                style: TextStyle(fontSize: 50),
              ),
            )
          ],
        ),
      ),
        ],

      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {

          return fifth1();

        },));

      },backgroundColor: Color(0xff010313),child: Icon(Icons.navigation),),
    );
  }
}
