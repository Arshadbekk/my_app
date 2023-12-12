import 'package:flutter/material.dart';
import 'package:my_app/widgets.dart';

import 'main.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds:5)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widgetPage(),)));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: width*2,
            width: width*1,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Welcome",style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: width*0.055,
                ),)
                ),
                SizedBox(height: width*0.03,),
                CircularProgressIndicator(
                  color: Colors.red,
                  // strokeWidth: width*0.01,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
