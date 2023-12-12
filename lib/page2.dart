import 'package:flutter/material.dart';
import 'package:my_app/page3.dart';

import 'main.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page3(),));
            },
              child: Icon(Icons.add)),
          SizedBox(width: width*0.03,)
        ],
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back
          ),
        ),
      ),
    );
  }
}
