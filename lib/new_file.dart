import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: double.infinity,
                height: 200,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                       blurRadius: 4,
                        spreadRadius: 2,
                      offset: Offset(0,4),

                    ),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      // child: Image.asset("images/images.jpg"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("images/images.jpg"),fit: BoxFit.fill),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Search")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_alarms_sharp),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Alarm")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.account_circle),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact"),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Text("Text"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.add_a_photo),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Add a Photo"),
                    ],
                  ),
                  Icon(Icons.add_a_photo),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   children: [
                     Icon(Icons.add),
                     SizedBox(
                       width: 10,
                     ),
                     Text("Add"),
                   ],
                 ),
                  Icon(Icons.add),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_balance),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Account"),
                    ],
                  ),
                  Icon(Icons.account_balance),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                   children: [
                     Icon(Icons.add_alarm),
                     SizedBox(
                       width: 10,
                     ),
                     Text("Alarm"),
                   ],
                  ),

                  Icon(Icons.add_alarm),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   children: [
                     Icon(Icons.accessibility),
                     SizedBox(
                       width: 10,
                     ),
                     Text("Accessibility"),
                   ],
                 ),
                  Icon(Icons.accessibility),
                ],
              ),

              Container(
                width: double.infinity,
                height: 200,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: Offset(0,4),
                    ),
                  ],

                  color: Colors.white,
                ),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   CircleAvatar(
                     radius: 45,
                     backgroundColor: Colors.green,
                     backgroundImage: NetworkImage("https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter"),
                   ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("FLUTTER"),
                        Text("FLUTTER"),
                        Text("FLUTTER "),
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 100,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:Border.all(
                          color: Colors.black,
                        ) ,

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.accessible),
                              Text("Man-1"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.accessibility),
                              Text("Man-2"),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
