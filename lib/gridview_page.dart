import 'package:flutter/material.dart';

import 'main.dart';

class gridViewPage extends StatefulWidget {
  const gridViewPage({super.key});

  @override
  State<gridViewPage> createState() => _gridViewPageState();
}

class _gridViewPageState extends State<gridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Grid View"),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: 20,
                 shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  crossAxisSpacing: width*0.03,
                  mainAxisSpacing: width*0.03,
                  childAspectRatio: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                    width: width*0.2,
                    height: width*0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: Colors.blue[200],
                    ),
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
