import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:otherwidget/sixth.dart';
import 'package:simple_tooltip/simple_tooltip.dart';

class fifth1 extends StatefulWidget {
  const fifth1({Key? key}) : super(key: key);

  @override
  State<fifth1> createState() => _fifth1State();
}

class _fifth1State extends State<fifth1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ),

      // tooltipis......
      body: Column(
          children: [
          Text("Tooltips :Press icon and tooltips open under icon..."),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Tooltip(
                waitDuration: Duration(seconds: 1),
                showDuration: Duration(seconds: 2),
                padding: EdgeInsets.all(5),
                height: 35,
                textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                message: 'My Account',
                child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Tooltip(
                message: 'My Account',
                child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                )),
          )
        ],
      ),
      SimpleTooltip(animationDuration: Duration(seconds: 2),
          tooltipDirection: TooltipDirection.down,
          content: Text(
            "Some Text!!!!",
            style: TextStyle(fontSize: 20),
          ),
          show: status,
          child: InkWell(
            onTap: () {
              setState(() {
                if (status == false) {
                  status = true;
                }
                else {
                  status = false;
                }
              });
            },
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  shape: BoxShape.circle,
                  color: Colors.yellow),
            ),
          )
      ),

      // Hero Widget animated first to second page......
      Text("Hero Widget animated first to second page......"),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return sixth1();
          }));
        },
        child: Hero(
          tag: 'imageHero',
          transitionOnUserGestures: true,
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
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


  bool status = false;
}
