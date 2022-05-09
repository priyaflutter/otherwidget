import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:otherwidget/seventh.dart';

class sixth1 extends StatefulWidget {
  const sixth1({Key? key}) : super(key: key);

  @override
  State<sixth1> createState() => _sixth1State();
}

class _sixth1State extends State<sixth1> {


  String img="";
  GlobalKey cropkey =GlobalKey();

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
          Container(height: 30,
              child: Text("Hero Widget animated second to first page......")),
          Container(height: 100,
            child: Center(
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
          ),
         
      InkWell(onTap: () async {
        ImagePicker picker = ImagePicker();
        // Pick an image
         XFile? image = await picker.pickImage(source: ImageSource.gallery);

                          setState(() {

                            img=image!.path;
                          });
                          print("=========${img}");
                          
                        },
        child: Container(  height: 400,
          decoration:BoxDecoration(
              // image: DecorationImage(
              //   fit: BoxFit.fitWidth,
              //   alignment: FractionalOffset.topCenter,
              //   image: NetworkImage('https://i.stack.imgur.com/lkd0a.png'),
              // )
          ),
        // child:
        // Image.file(imagefile,fit: BoxFit.cover,),
        // Crop(key: cropkey,
        //   image:FileImage(File("${img}")),
        // aspectRatio: 4.0/3.0,),
        ),
      ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {

          return seventh1();

        },));

      },backgroundColor: Color(0xff010313),child: Icon(Icons.navigation),),
    );
  }
File? imageFile;
}
