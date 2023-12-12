import 'package:flutter/material.dart';
import 'package:my_app/color_page.dart';
import 'package:my_app/new_file.dart';
import 'package:my_app/second_page.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("HOME"),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.storage,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Storage",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Wallet",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Account",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add_business,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Bussiness",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.punch_clock,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Clock",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.privacy_tip_outlined,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Privacy",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Info",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Help",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Payment",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "About",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.event_available,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Events",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "Share",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage("images/arshad.jpeg"),
            ),
            Text(
              "Arshad Bekk",
              style: TextStyle(fontSize: 34),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Container(
                  color: Colors.blueGrey,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                    ),
                    title: Text(
                      "+91 9061263384",
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Icon(Icons.phone_android),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                  color: Colors.blueGrey,
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 30,
                    ),
                    title: Text(
                      "arshadbekk@gmail.com",
                      style: TextStyle(fontSize: 16),
                    ),
                    subtitle: Text("Arshad Bekk "),
                    trailing: Icon(Icons.add),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                  color: Colors.blueGrey,
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      size: 30,
                    ),
                    title: Text(
                      "ARSHAD BEKK",
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Icon(Icons.add),
                  )),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homePage()));
              },
              icon: Icon(
                Icons.navigate_next,
                size: 35,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
              },
                child: Icon(
              Icons.next_plan,
              size: 30,
              color: Colors.blueGrey,
            )),
            SizedBox(height: 20,),
            // GestureDetector(
            //   onDoubleTap: (){
            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>colorPage()));
            //   },
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.blueGrey,
            //     child: Icon(Icons.accessibility,color: Colors.white,size: 50,),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(Icons.mail,size: 30,),
// SizedBox(width: 10,),
// Text("arshadbekk@gmail.com",style: TextStyle(fontSize: 18),)
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(Icons.phone,size: 30,),
// SizedBox(width: 10,),
// Text("+91 9061263384",style: TextStyle(fontSize: 18),)
// ],
// ),
