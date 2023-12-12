import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';
import 'dart:io';

class packages extends StatefulWidget {
  const packages({super.key});

  @override
  State<packages> createState() => _packagesState();
}

class _packagesState extends State<packages> {
  var file;
  Future<void> pickFile(ImageSource) async {
    final imageFile=await ImagePicker.platform.pickImage(source: ImageSource);
    file=File(imageFile!.path);
    if(mounted){
      setState(() {
        file=File(imageFile.path);
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Packages",
          style: TextStyle(
            fontSize: width * 0.055,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.03),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: width * 0.4,
                  width: width * 0.3,
                  color: Colors.red,
                  child: Lottie.asset(
                    "images/giftbox.json",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: width * 0.04,
                  width: width * 0.04,
                  child: SvgPicture.asset(
                    "images/product.svg",
                  ),
                ),
                Container(
                  height: width * 0.4,
                  width: width * 0.3,
                  color: Colors.green,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQphO1iGa3a8wJpd43zAbREvXa8q4DmAIKww&usqp=CAU",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(height: width*0.2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    pickFile(ImageSource.gallery);
                  },
                  child: Container(
                    height: width * 0.15,
                    width: width * 0.3,
                    child: Icon(Icons.image),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.03),
                      color: Colors.blue,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    pickFile(ImageSource.camera);
                  },
                  child: Container(
                    height: width * 0.15,
                    width: width * 0.3,
                    child: Icon(Icons.camera_alt),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.03),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: width*0.03,),
           file!=null? Container(
              height: width*0.5,
              width: width*0.4,
              color: Colors.grey,
              child: Image.file(file,fit: BoxFit.fill,),
            )
            : Container(
             height: width*0.5,
             width: width*0.4,
             color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                   color: Colors.black,
                   // strokeWidth: width*0.01,
           ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
