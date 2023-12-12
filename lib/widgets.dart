import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'main.dart';

class widgetPage extends StatefulWidget {
  const widgetPage({super.key});

  @override
  State<widgetPage> createState() => _widgetPageState();
}

class _widgetPageState extends State<widgetPage> {
  List images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx-tUcqDkkeDJpZd7bLXJgwAAyS8OtVR6Lh0LADP_BJ71EZrLo0SEjdaUfxVkMQOCdY1k&usqp=CAU",
    "https://images.hindustantimes.com/auto/img/2023/05/08/600x338/Honda_electric_motorcycles_1682760893792_1683521595769.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx4reEUhwHHPAZPVfWAEjrsYdEV16Nw4KzqN6cZ0DK1YNlsxY6mPsWqCeqEPeaIgS6HIM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTk5TItvRIoVG5sjJhszdrFFRZPHChrbI9DngLJwvR_Va_NJ0iON081NaxBfxPS_BI3Rw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOecdPTQ_sp637Bu2C9LkVR3qqhgezV0jIwYI4R936tOIrEQl5K98Ovoi-LHfNAN8rkM&usqp=CAU",
  ];
  int initalIndex = 0;
  // bool gender=true
  String gender = "male";
  bool tick1 = false;
  bool tick2 = false;
  bool select1 = true;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;
  bool click = false;
  int counter = 0;
  bool toggle=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Home")),
            ListTile(
              leading: Icon(Icons.account_balance),
            )
          ],
        ),
        // child: Padding(
        //   padding:  EdgeInsets.only(top: width*0.1),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Container(
        //
        //         child:
        //         Icon(
        //           Icons.account_circle
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Widgets"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text("Profile"),
                  ],
                )),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.security,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text("Security"),
                  ],
                )),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text("Privacy"),
                  ],
                )),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text("Settings"),
                  ],
                )),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.help,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text("Help"),
                  ],
                )),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.03),
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: 4,
              options: CarouselOptions(
                autoPlayAnimationDuration: Duration(
                  milliseconds: 200,
                ),
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  initalIndex = index;
                  setState(() {});
                },
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  height: width * 0.4,
                  width: width * 1,
                  margin: EdgeInsets.only(right: width * 0.03),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.03),
                      color: Colors.black,
                      image: DecorationImage(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.fill,
                      )),
                );
              },
            ),
            SizedBox(
              height: width * 0.03,
            ),
            AnimatedSmoothIndicator(
              activeIndex: initalIndex,
              count: images.length,
              duration: Duration(milliseconds: 200),
              effect: ExpandingDotsEffect(
                  activeDotColor: Colors.red, dotColor: Colors.black),
            ),
            SizedBox(
              height: width * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RadioMenuButton(
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                    child: Text("Male")),
                RadioMenuButton(
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                    child: Text("Female")),
                RadioMenuButton(
                    value: "other",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                    child: Text("Other")),
              ],
            ),
            SizedBox(
              height: width * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CheckboxMenuButton(
                    value: tick1,
                    onChanged: (value) {
                      setState(() {
                        tick1 = value!;
                      });
                    },
                    child: Text("A")),
                CheckboxMenuButton(
                    value: tick2,
                    onChanged: (value) {
                      setState(() {
                        tick2 = value!;
                      });
                    },
                    child: Text("B")),
              ],
            ),
            SizedBox(
              height: width * 0.03,
            ),
            click == true
                ? SizedBox(
                    height: width * 0.08,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          select1 = true;
                          select2 = false;
                          select3 = false;
                          select4 = false;
                          setState(() {});
                        },
                        child: Container(
                          height: width * 0.08,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.03),
                              color: select1 == true
                                  ? Colors.green
                                  : Colors.grey[400]),
                          child: Center(
                              child: Text(
                            "A",
                            style: TextStyle(
                                color: select1 == true
                                    ? Colors.white
                                    : Colors.black),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          select2 = true;
                          select1 = false;
                          select3 = false;
                          select4 = false;
                          setState(() {});
                        },
                        child: Container(
                          height: width * 0.08,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.03),
                              color: select2 == true
                                  ? Colors.green
                                  : Colors.grey[400]),
                          child: Center(
                              child: Text(
                            "B",
                            style: TextStyle(
                                color: select2 == true
                                    ? Colors.white
                                    : Colors.black),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          select3 = true;
                          select1 = false;
                          select2 = false;
                          select4 = false;
                          setState(() {});
                        },
                        child: Container(
                          height: width * 0.08,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.03),
                              color: select3 == true
                                  ? Colors.green
                                  : Colors.grey[400]),
                          child: Center(
                              child: Text(
                            "C",
                            style: TextStyle(
                                color: select3 == true
                                    ? Colors.white
                                    : Colors.black),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          select1 = false;
                          select2 = false;
                          select3 = false;
                          select4 = true;
                          setState(() {});
                        },
                        child: Container(
                          height: width * 0.08,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.03),
                              color: select4 == true
                                  ? Colors.green
                                  : Colors.grey[400]),
                          child: Center(
                              child: Text(
                            "D",
                            style: TextStyle(
                                color: select4 == true
                                    ? Colors.white
                                    : Colors.black),
                          )),
                        ),
                      ),
                    ],
                  ),
            SizedBox(
              height: width * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    click = true;
                    setState(() {});
                  },
                  child: Container(
                    height: width * 0.08,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.03),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "Clear",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    click = false;
                    setState(() {});
                  },
                  child: Container(
                    height: width * 0.08,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.03),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "Get",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: width * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    counter++;
                    setState(() {});
                  },
                  child: CircleAvatar(
                    radius: width * 0.06,
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                ),
                Text(counter.toString()),
                GestureDetector(
                  onTap: () {
                    counter <= 0 ? counter = 0 : counter--;
                    setState(() {});
                  },
                  child: CircleAvatar(
                    radius: width * 0.06,
                    child: Icon(Icons.remove),
                  ),
                )
              ],
            ),
            SizedBox(
              height: width * 0.03,
            ),
            Divider(
              color: Colors.black,
              // thickness: width*0.03,
              indent: width * 0.1,
              endIndent: width * 0.1,
            ),
            SizedBox(
              height: width * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Do You Want To Exit?"),
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: width * 0.08,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(width * 0.03),
                                      color: Colors.purple),
                                  child: Center(
                                      child: Text(
                                    "Yes",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: width * 0.08,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(width * 0.03),
                                      color: Colors.purple),
                                  child: Center(
                                      child: Text(
                                    "No",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: width * 0.08,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.03),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "Alert Box",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                CircularProgressIndicator(
                  color: Colors.black,
                  // strokeWidth: width*0.01,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(width*0.05),
                            topRight: Radius.circular(width*0.05),
                          )
                      ),
                      builder: (context) {
                        return Container(
                          child: Center(child: Text("heyyyy")),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: width * 0.08,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.03),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "Btm sheet",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        toggle=!toggle;
                        setState(() {

                        });
                      },
                      child: Container(
                        height: width*0.08,
                        width: width*0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.05),
                          color:toggle?Colors.green:Colors.grey.shade400,
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration:Duration(
                          milliseconds: 200
                      ) ,
                      left:toggle? width*0.11:0,
                      right:toggle? 0:width*0.11,
                      child: InkWell(
                        onTap: () {
                          toggle=!toggle;
                          setState(() {

                          });
                        },
                        child: AnimatedContainer(
                          height: width*0.08,
                          width: width*0.08,
                          curve: Curves.easeIn,
                            duration:Duration(
                              milliseconds: 200
                            ) ,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: Duration(
                        milliseconds: 200
                      ),
                       left: toggle?width*0.01:width*0.1,
                       right: toggle?width*0.1:width*0.01,
                        top: width*0.015,

                        child: Text(toggle?"ON":"OFF",
                        style: TextStyle(
                          color: toggle?Colors.white:Colors.black
                        ),)
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {

        },
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}
