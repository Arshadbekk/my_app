import 'package:flutter/material.dart';

import 'main.dart';

class tabBar extends StatefulWidget {
  const tabBar({super.key});

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  List chats=[
    {
      "profile":"https://b.fssta.com/uploads/application/soccer/headshots/885.vresize.350.350.medium.14.png",
      "text1":"Cristano Ronaldo",
      "text2":"Heyyy"
    },
    {
      "profile":"https://b.fssta.com/uploads/application/soccer/headshots/711.vresize.350.350.medium.70.png",
      "text1":"Lionel Messi",
      "text2":"Wassupp"
    },
    {
      "profile":"https://b.fssta.com/uploads/application/wwe/headshots/dwayne-the-rock-johnson.png",
      "text1":"Rock",
      "text2":"Hey Mahn"
    },
    {
      "profile":"https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/57.png",
      "text1":"Ms Dhoni",
      "text2":"broooo"
    },{
      "profile":"https://b.fssta.com/uploads/application/wwe/headshots/john-cena.png",
      "text1":"John Cena",
      "text2":"hloo"
    }, {
      "profile":"https://i.pinimg.com/736x/7e/f5/79/7ef579549eeee0d7b668f922dc2d1758.jpg",
      "text1":"Abel",
      "text2":"Heyyy"
    },
    {
      "profile":"https://www.filmibeat.com/img/2017/07/dulquersalmaanbirthdayspecial-28-1501222841.jpg",
      "text1":"DQ",
      "text2":"mahnn"
    },
    {
      "profile":"https://phantom-marca.unidadeditorial.es/c2d3e7cec006c2ceb5760c4b3f7ad2ca/crop/0x0/2044x1363/resize/828/f/jpg/assets/multimedia/imagenes/2023/09/01/16935900900609.jpg",
      "text1":"Neymar",
      "text2":"Hey Mahn"
    },
    {
      "profile":"https://api.time.com/wp-content/uploads/2023/04/Kylian-Mbappe-time100-2023.jpg",
      "text1":"Mbappe",
      "text2":"broooo"
    },{
      "profile":"https://gumlet.assettype.com/bettorsinsider%2F2022-07%2F647ddea7-b858-47e5-b887-586a66f1630b%2FFXPQmxNWAAAQNvD_1.jpeg?w=1200&auto=format%2Ccompress&ogImage=true&enlarge=true",
      "text1":"Haaland",
      "text2":"hloo"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp",style: TextStyle(
            color: Colors.white
          ),),
          bottom: TabBar(
            indicatorColor: Colors.white,
              tabs: [
                Tab(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Icon(Icons.chat),
                   Text("Chats"),
                 ],
               ),
              ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.call),
                      Text("Calls"),
                    ],
                  ),
                ),
                Tab(
                  text: "Status",
                ),
              ],
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: width*1.691,
                            width: width*1,
                            child: ListView.separated(
                              shrinkWrap: true,
                               physics: BouncingScrollPhysics(),
                               itemCount: chats.length,
                               itemBuilder: (context, index) {
                                return  Container(
                                    height: width*0.25,
                                    width: width*1,
                                    color: Colors.white,
                                    child: Padding(
                                      padding:  EdgeInsets.all(width*0.03),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            // backgroundColor: Colors.red,
                                            radius: width*0.1,
                                            backgroundImage: NetworkImage(chats[index]["profile"]),
                                          ),
                                          SizedBox(width: width*0.03,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(chats[index]["text1"],style: TextStyle(
                                                  fontSize: width*0.05,
                                                  fontWeight: FontWeight.w800
                                              ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.done_all),
                                                  Text(chats[index]["text2"])
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                );
                              },
                              separatorBuilder: (context, index) {
                                return Divider(
                                      thickness: width*0.004,
                                );
                              },
                            ),

                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.blue,
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
