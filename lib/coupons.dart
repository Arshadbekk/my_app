import 'package:flutter/material.dart';

import 'main.dart';

class coupons extends StatefulWidget {
  const coupons({super.key});

  @override
  State<coupons> createState() => _couponsState();
}

class _couponsState extends State<coupons> {
  List rewards=[

    {
      "text1":"All",
      "text2":"Rewards",
      "image":"images/flip1.jpeg"
    },
    {
      "text1":"SuperCoin",
      "text2":"Zone",
      "image":"images/supercoin.jpg"
    },
    {
      "text1":"Game",
      "text2":"Zone",
      "image":"images/game.png"
    },
    {
      "text1":"",
      "text2":"Videos",
      "image":"images/video.png"
    },
  ];
  List coupons=[
    {
      "image1":"images/predictandwin.jpg",
      "text1":"Ultimate Prizes Await",
      "text2":"Predict and Win a Car",
      "text3":"",
      "color1":Colors.purple.shade50,
      "textstyle1":TextStyle(
          color: Colors.grey.shade600,
      ),
      "textstyle2":TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: width*0.05
      ),
      "textstyle3":TextStyle()
    },
    {
      "image1":"images/women.jpg",
      "text1":"WOMEN'S PASS",
      "text2":"Avail benefits worth ₹3,000+ on 40+ Brand Deals",
      "text3":"Get Extra ₹200 discount on your next purchase",
      "color1":Colors.orange.shade100,
      "textstyle1":TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w800
      ),
      "textstyle2":TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: width*0.02
      ),
      "textstyle3":TextStyle(
        fontSize: width*0.02
      )
    },
    {
      "image1":"images/fan.png",
      "text1":"Energy Efficient Await",
      "text2":"Extra 10% Off",
      "text3":"",
      "color1":Colors.pink.shade50,
      "textstyle1":TextStyle(
          color: Colors.grey.shade500,
      ),
      "textstyle2":TextStyle(
        fontSize: width*0.04,
        fontWeight: FontWeight.w800,),
      "textstyle3":TextStyle()
    },
    {
      "image1":"images/flight.jpg",
      "text1":"Flights",
      "text2":"10-15% Off on Flights Booking",
      "text3":"Code:FLYNEW",
      "color1":Colors.orange.shade50,
      "textstyle1":TextStyle(
        color: Colors.grey.shade500,
      ),
      "textstyle2":TextStyle(
        fontWeight: FontWeight.w800,
      ),
      "textstyle3":TextStyle(
        fontSize: width*0.02,

      )
    },
    {
      "image1":"images/building.png",
      "text1":"Hotels",
      "text2":"Upto 40% Off on Premium Hptels",
      "text3":"Code:FKHOTELS",
      "color1":Colors.purple.shade50,
      "textstyle1":TextStyle(
        color: Colors.grey.shade500,
      ),
      "textstyle2":TextStyle(
        fontWeight: FontWeight.w800,
      ),
      "textstyle3":TextStyle(
        fontSize: width*0.02,

      )
    },
    {
      "image1":"images/coin1.png",
      "text1":"More Rewards & Coupons",
      "text2":"Get Up to 100% Off using Coins",
      "text3":"",
      "color1":Colors.purple.shade50,
      "textstyle1":TextStyle(
        color: Colors.grey.shade500,
      ),
      "textstyle2":TextStyle(
        fontWeight: FontWeight.w800,
      ),
      "textstyle3":TextStyle(

      )
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Coupons"),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: width * 0.03,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: width * 0.03,
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: width * 0.45,
            width: width * 1,
            color: Colors.white,
            padding: EdgeInsets.all(width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "See Rewards By",
                  style: TextStyle(
                      fontSize: width * 0.043, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: width * 0.03,
                ),
                Container(
                  height: width*0.23,
                  width: width*1,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: rewards.length,
                    itemBuilder: (context,index) {
                      return Stack(
                        children: [
                          Container(
                            height: width * 0.23,
                            width: width * 0.3,
                            // color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: width * 0.18,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(width * 0.01),
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [Text(rewards[index]["text1"]), Text(rewards[index]["text2"])],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: width * 0.11,
                            bottom: width * 0.14,
                            child: CircleAvatar(
                              radius: width * 0.04,
                              backgroundImage:
                                  AssetImage(rewards[index]["image"]),
                              backgroundColor: Colors.grey,
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: width*0.03,),
          Container(
            height: width*1.3,
            width: width*1,
            color: Colors.white,
            padding: EdgeInsets.all(width*0.03),
            child:   Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Coupons",style: TextStyle(
                          fontWeight: FontWeight.w800
                      ),),
                      Text("Add coupon",style: TextStyle(
                          color: Colors.blue.shade900
                      ),)
                    ],

                  ),
                  SizedBox(height: width*0.03,),
                  Container(
                    height: width*1.1,
                    width: width*1,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: coupons.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: width*0.2,
                          width: width*0.9,
                          padding: EdgeInsets.all( width*0.02),
                          decoration: BoxDecoration(
                              color: coupons[index]["color1"],
                              borderRadius: BorderRadius.circular(width*0.01),
                              border: Border.all(color: Colors.grey.shade300)
                          ),
                          child: Row(
                            children: [
                              Container(
                                  height: width*0.16,
                                  width: width*0.17,
                                  child: Image.asset(coupons[index]["image1"],fit: BoxFit.fill,)
                              ),
                              SizedBox(width: width*0.03,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(coupons[index]["text1"],style: coupons[index]["textstyle1"]),
                                  Text(coupons[index]["text2"],style: coupons[index]["textstyle2"]),
                                  Text(coupons[index]["text3"],style: coupons[index]["textstyle3"],),
                                ],
                              )
                            ],
                          ),

                        );
                      }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: width*0.03,);
                    },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
