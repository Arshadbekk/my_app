import 'package:flutter/material.dart';
import 'package:my_app/coupons.dart';
import 'package:my_app/flip.dart';
import 'package:my_app/tabbar.dart';
import 'package:my_app/tabbar2.dart';
import 'package:my_app/task2.dart';
import 'package:my_app/video4.dart';
import 'package:my_app/widgets.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});


  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int selectindex=0;
  List pages=[
    widgetPage(),
    listTask(),
    video(),
    flipKart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: "Contacts"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart"
          )
        ],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        currentIndex: selectindex,
        onTap: (value) {
          selectindex=value;
          setState(() {

          });
        },

      ),
    );
  }
}
