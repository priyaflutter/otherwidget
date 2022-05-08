

import 'package:flutter/material.dart';
import 'package:otherwidget/fourth.dart';

class third1 extends StatefulWidget {
  const third1({Key? key}) : super(key: key);

  @override
  State<third1> createState() => _third1State();
}

var snackbar = "";
List items = ['Horse', 'Cow', 'Camel', 'Sheep', 'Goat'];

class _third1State extends State<third1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ),
      body: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

           // Snackbar animation jvu work kre....
          SizedBox(height: 20,child: Text("Snackbar"),),
          Center(
            child: Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                    content: Text("I am Snackbar.."),
                    action: SnackBarAction(onPressed: () {
                      
                    },label: "Undo"),
                    backgroundColor: Colors.black,
                    // behavior: SnackBarBehavior.floating,
                    
                    // behavior: SnackBarBehavior.floating,
                  )) ;

                  
                },
                child: Text(
                  'Click to Display a SnackBar',
                ),
              ),
            ),
          ),

          //Divider......2 Container vachhe Space kre
          SizedBox(height: 20,child: Text("Divider"),),
          Container(height: 400,
            child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text(items[index]),
                  ),
                  Divider(), //                           <-- Divider
                ],
              );
            },
          ),)
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {

          return fourth1();

        },));

      },backgroundColor: Color(0xff010313),child: Icon(Icons.navigation),),
    );
  }
}
