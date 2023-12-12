import 'package:flutter/material.dart';
import 'package:my_app/color_page.dart';
import 'package:my_app/new_file.dart';
import 'package:my_app/lisview_page.dart';
import 'package:my_app/video4.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _selectedIndex=0;
  List<Widget> pages=[
    homePage(),
    listViewPage(),
    video(),

  ];
  void onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading:IconButton(onPressed: () {

        }, icon: Icon(Icons.storage)) ,
        title: Center(child: Text("HOME",style: TextStyle(fontSize: 18),)),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.ice_skating))
        ],
      ),
      body: pages[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.blueGrey,
       child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),


        ],
        onTap: onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
