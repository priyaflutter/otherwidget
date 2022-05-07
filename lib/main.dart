import 'package:flutter/material.dart';
import 'package:otherwidget/second.dart';

void main() {
  runApp(MaterialApp(
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ), //AppBar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: (([
          //chip........... Container animated rhe...

          Container(
            height: 100,
            child: Center(
              child: Chip(
                labelStyle: TextStyle(color: Colors.red),
                elevation: 20,
                padding: EdgeInsets.all(8),
                backgroundColor: Colors.greenAccent[100],
                shadowColor: Colors.black,
                avatar: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetwordImage
                ),
                //CircleAvatar
                label: Text(
                  "Chip                        ",
                  style: TextStyle(fontSize: 20),
                ), //Text
              ),
            ),
          ),

          //checkboxlisttile........... 2 k tethi vdhu option select kre ex==Hotel menu...

          SizedBox(
            width: 400,
            height: 100,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(20),
                  ), //BoxDecoration

                  /** CheckboxListTile Widget **/
                  child: CheckboxListTile(
                    title: Text('Checkbox Listtile'),
                    subtitle: Text('A computer science portal for geeks.'),
                    secondary: Icon(Icons.code),
                    autofocus: false,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    selected: check,
                    value: check,
                    onChanged: (bool) {
                      setState(() {
                        if (check == false) {
                          check = true;
                        } else {
                          check = false;
                        }
                      });
                    },
                  ), //CheckboxListTile
                ), //Container
              ), //Padding
            ), //Center
          ),

          //Interactive Viewer........... image zoom in zoom out kre

          InteractiveViewer(
            child: Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/nature.webp"),
                        fit: BoxFit.fill)),
                child: Center(
                    child: Text(
                  "InteractiveViewer",
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ))),
            transformationController: controller,
            boundaryMargin: EdgeInsets.all(5.0),
            onInteractionStart: (ScaleStartDetails startdetails) {
              print(startdetails);
              print(startdetails.focalPoint);
              controller.value = Matrix4.identity();
              setState(() {
                velocity = startdetails.focalPoint.toString();
              });
            },
            onInteractionEnd: (ScaleEndDetails endDetails) {
              print(endDetails);
              print(endDetails.velocity);
              controller.value = Matrix4.identity();
              setState(() {
                velocity = endDetails.velocity.toString();
              });
            },
          ),
        ])),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return seconnd2();
            },
          ));
        },
        backgroundColor: Color(0xff010313),
        child: Icon(Icons.navigation),
      ), //Center
    ); //Scaffold;
  }

  TransformationController controller = TransformationController();
  String velocity = "";
}
