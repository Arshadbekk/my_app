import 'package:flutter/material.dart';

import 'main.dart';

class textFormPage2 extends StatefulWidget {
  const textFormPage2({super.key, required this.name, required this.number, required this.email, required this.address, required this.password});
final String name;
final String number;
final String email;
final String address;
final String password;

  @override
  State<textFormPage2> createState() => _textFormPage2State();
}

class _textFormPage2State extends State<textFormPage2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Text Form Page 2"),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: SingleChildScrollView(
          child: Column(
              children: [
               Container(
                 height: width*1.75,
                 width: width*1,
                 // color: Colors.red,
                 child: Center(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Name=${widget.name}",style: TextStyle(
                           fontSize: width*0.04,
                           fontWeight: FontWeight.w500
                         ),
                         ),
                         Text("Number=${widget.number}",style: TextStyle(
                             fontSize: width*0.04,
                             fontWeight: FontWeight.w500
                         ),),
                         Text("Email=${widget.email}",style: TextStyle(
                             fontSize: width*0.04,
                             fontWeight: FontWeight.w500
                         ),),
                         Text("Address=${widget.address}",style: TextStyle(
                             fontSize: width*0.04,
                             fontWeight: FontWeight.w500
                         ),),
                         Text("Password=${widget.password}",style: TextStyle(
                             fontSize: width*0.04,
                             fontWeight: FontWeight.w500
                         ),),
                       ],
                     )
                 ),
               )
              ],
          ),
        ),
      ),
    );
  }
}
