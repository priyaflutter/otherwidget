import 'package:flutter/material.dart';

class sixth1 extends StatefulWidget {
  const sixth1({Key? key}) : super(key: key);

  @override
  State<sixth1> createState() => _sixth1State();
}

class _sixth1State extends State<sixth1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Hero Widget : animation second to first page.....
          Text("Hero Widget animated second to first page......"),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Hero(
                tag: 'imageHero',
                transitionOnUserGestures: true,
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(width: 2), shape: BoxShape.circle,color: Colors.black),
          )
        ],
      ),
    );
  }
}
