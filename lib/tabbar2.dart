import 'package:flutter/material.dart';

import 'main.dart';

class tabBar2 extends StatefulWidget {
  const tabBar2({super.key});

  @override
  State<tabBar2> createState() => _tabBar2State();
}

class _tabBar2State extends State<tabBar2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar2"),
          ),
          body: Column(
            children: [
              Container(
                height: width*0.12,
                width: width*1,
                margin: EdgeInsets.all(width*0.03),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(width*0.03)
                ),
                child: TabBar(
                  labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: Colors.purple,
                    ),
                    tabs: [
                      Tab(
                        text: "ABC",
                      ),
                      Tab(
                        text: "EFG",
                      ),
                      Tab(
                        text:"HIJ" ,
                      )
                    ]
                ),
              ),
              Container(
                height: width*1.6,
                width: width*1,
                child: TabBarView(
                    children: [
                      Container(
                        color: Colors.greenAccent,
                      ),
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        color: Colors.cyan,
                      )
                    ]
                ),
              )
            ],
          ),
        )
    );
  }
}
