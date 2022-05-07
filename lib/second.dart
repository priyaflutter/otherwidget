import 'package:flutter/material.dart';
import 'package:otherwidget/third.dart';

class seconnd2 extends StatefulWidget {
  const seconnd2({Key? key}) : super(key: key);

  @override
  State<seconnd2> createState() => _seconnd2State();
}

class _seconnd2State extends State<seconnd2> {


  String gender="male";

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('GeeksforGeeks'),
      backgroundColor: Colors.greenAccent[400],
      centerTitle: true,
    ),
      body: Column(
        children: ([

          //Radiolist tile... 2 option mathi ek choose kre ex= Gender= male,female
          SizedBox(height: 20,child: Text("Radiolisttile"),),
          Container(height: 100,
              child: RadioListTile(
                value: "male",
                groupValue: gender,
                title: Text("Male"),
                subtitle: Text("Radio 1 Subtitle"),
                onChanged: (value) {
                  print("Radio Tile pressed $value");
                  setState(() {
                    gender=value.toString();

                  });
                },
                activeColor:Colors.black,
                secondary: OutlineButton(
                  child: Text("Say Hi"),
                  onPressed: () {


                  },
                ),
                selected: true,
              ), ),
          Container(height: 100,
            child: RadioListTile(
              value: "female",
              groupValue: gender,
              title: Text("Female"),
              subtitle: Text("Radio 1 Subtitle"),
              onChanged: (value) {
                print("Radio Tile pressed $value");
                setState(() {

                  gender=value.toString();

                });
              },
              activeColor: Colors.black,
              secondary: OutlineButton(
                child: Text("Say Hi"),
                onPressed: () {
                    setState(() {

                    });
                },
              ),
              selected: true,
            ), ),

          //Flaxiable Widget... design flexiable kre
          SizedBox(height: 20,child: Text("Flaxiable"),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ), //BoxDecoration
                ), //Container
              ), //Flexible
              SizedBox(
                width: 20,
              ), //SizedBox
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ) //BoxDecoration
                ), //Container
              ) //Flexible
            ],

          ), //Row
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Container(
              width: 380,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue), //BoxDecoration
            ), //Container
          ), //Flexible
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Container(
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.cyan,
                  ), //BoxDecoration
                ), //Container
              ), //Flexible
              SizedBox(
                width: 20,
              ), //SizedBox
              Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan,
                      ) //BoxDecoration
                  ) //Container,
              ) //Flexible
            ],
          ), //Row
        ]), //<Widget>[]
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {

          return third1();

        },));

      },backgroundColor: Color(0xff010313),child: Icon(Icons.navigation),),
    );
  }
}
