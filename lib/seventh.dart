import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class seventh1 extends StatefulWidget {
  const seventh1({Key? key}) : super(key: key);

  @override
  State<seventh1> createState() => _seventh1State();
}

class _seventh1State extends State<seventh1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("7"),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              InkWell(
                onTap: () async {
                  setState(() async {
                    final ImagePicker picker = ImagePicker();

                    final XFile? image =
                        await picker.pickImage(source: ImageSource.gallery);

                    setState(() {
                      crop=image!.path;
                     
                    });
                    print("=============${crop}");
                    

                    // final crop = cropKey.currentState;
                    // final crop = Crop.of(context);
                    // final scale = crop!.scale;
                    // final area = crop.area;

                    croppedFile = await ImageCropper().cropImage(
                      sourcePath: image!.path,
                      uiSettings: [
                        AndroidUiSettings(
                            toolbarTitle: 'Cropper',
                            toolbarColor: Colors.deepOrange,
                            toolbarWidgetColor: Colors.white,
                            initAspectRatio: CropAspectRatioPreset.original,
                            lockAspectRatio: false),
                      ],
                    );
                    crop = croppedFile!.path;
                    print(croppedFile.runtimeType);
                  });
                },
                child: Container( height:50,
                  width: double.infinity,
                  child: Text(
                    "Pic Image",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.black,border: Border.all(width: 2)),

                ),
              ),
              Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  minRadius: 30,
                  backgroundImage: FileImage(File(crop)),
                ),
              )
            ],
          ),
        ));
  }

  CroppedFile? croppedFile;
  String crop = "";
}
