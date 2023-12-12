import 'package:flutter/material.dart';
import 'package:my_app/page2.dart';

import 'main.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => page2(),));
            },
              child: Icon(Icons.add)),
          SizedBox(width: width*0.03,)
        ],
      ),
    );
  }
}
