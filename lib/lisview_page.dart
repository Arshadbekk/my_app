import 'package:flutter/material.dart';

import 'main.dart';

class listViewPage extends StatefulWidget {
  const listViewPage({super.key});

  @override
  State<listViewPage> createState() => _listViewPageState();
}

class _listViewPageState extends State<listViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("List View"),
        centerTitle:true ,
      ),
      body: Padding(
        padding:  EdgeInsets.all(width * 0.03),
        child: Column(
          children: [
            Container(
              height: width*0.3,
              width: width*1,
              color: Colors.black,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                // shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: width*0.2,
                        width: width*0.2,
                        color: Colors.blue[200],
                      ),
                    ],
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: width*0.03,
                  );
              },

              ),
            )
          ],
        ),
      ),
    );
  }
}
