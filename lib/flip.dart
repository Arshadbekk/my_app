import 'package:flutter/material.dart';
import 'package:my_app/coupons.dart';

import 'main.dart';

class flipKart extends StatefulWidget {
  const flipKart({super.key});

  @override
  State<flipKart> createState() => _flipKartState();
}

class _flipKartState extends State<flipKart> {
  var number=9061263384;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("+91 $number",style: TextStyle(
              color: Colors.black,
              fontSize: width*0.05,
            ),),
            // SizedBox(height: width*0.03,),
            Row(
              children: [
                Icon(Icons.add,color: Colors.yellow,),
                Text("Plus",style: TextStyle(
                  color: Colors.blue.shade900,
                  fontSize: width*0.04,
                  fontWeight: FontWeight.w600,
                ),),
                Text(" member",style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: width*0.04
                ),)
              ],
            ),


          ],
        ),
        elevation: 0,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: width * 0.08,
                  width: width * 0.16,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300,),
                      borderRadius: BorderRadius.circular(width * 0.03),
                      color: Colors.white),

                  
                  child: Row(
                    children: [
                      Icon(Icons.flash_on,color: Colors.yellow,),
                      Text("405",style: TextStyle(color: Colors.black),)
                    ],
                  ),
                
                
              ),

            ],
          ),
          SizedBox(width: width*0.03,)
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
        ),
        child: Column(
          children: [
            Container(
              width: width*1,
              height: width*0.3,
              color: Colors.white,
              padding: EdgeInsets.all(width*0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: width * 0.1,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.01),
                            border: Border.all(color: Colors.grey.shade400),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.shopping_cart,color: Colors.blue.shade900,
                            ),
                            Text("Orders")
                          ],
                        ),


                      ),
                      Container(
                        height: width * 0.1,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.01),
                            border: Border.all(color: Colors.grey.shade400),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.favorite_border,color: Colors.blue.shade900,
                            ),
                            Text("Wishlist")
                          ],
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: width*0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => coupons(),));
                        },
                        child: Container(
                          height: width * 0.1,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.01),
                              border: Border.all(color: Colors.grey.shade400),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.card_giftcard,color: Colors.blue.shade900,
                              ),
                              Text("Coupons")
                            ],
                          ),


                        ),
                      ),
                      Container(
                        height: width * 0.1,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.01),
                            border: Border.all(color: Colors.grey.shade400),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.headset_mic_outlined,color: Colors.blue.shade900,
                            ),
                            Text("Help Center")
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: width*0.03,),
            Container(
              height: width*0.23,
              width: width*1,
              color: Colors.white,
              padding: EdgeInsets.all(width*0.025),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: width*0.16,
                        width: width*0.1,
                        child: Image.asset(
                         "images/mail.png"),
                      ),
                      SizedBox(width: width*0.02,),
                      Row(
                        children: [
                          Text("Add/Verify your Email",style: TextStyle(
                            fontSize: width*0.04,
                            fontWeight: FontWeight.w600
                          ),),
                          SizedBox(width: width*0.02,),
                          CircleAvatar(
                            backgroundColor: Colors.red.shade600,
                            radius: width*0.01,
                          ),
                          SizedBox(width: width*0.15,),
                          Container(
                            height: width*0.08,
                            width: width*0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.01),
                              color: Colors.blue.shade900,
                            ),
                            child: Center(
                                child: Text("Update",style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: width*0.04
                                ),)
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // decoration: BoxDecoration(
              //     color: Colors.white,
              //   image: DecorationImage(
              //     image: AssetImage("images/mail.png"),
              //
              //   )
              // ),
            ),
            SizedBox(height: width*0.03,),
            Container(
              height: width*0.52,
              width: width*1,
              color: Colors.white,
              padding: EdgeInsets.all(width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Credit Options",style:TextStyle(
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w900
                  ),),
                  SizedBox(height: width*0.03,),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.currency_rupee_outlined,color: Colors.blue.shade900,),
                                SizedBox(width: width * 0.03,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Personal Loan",style: TextStyle(
                                      fontSize: width*0.04,
                                    ),),
                                    Text("Get loan of up to 5Lakh Instantly",style: TextStyle(
                                        color: Colors.grey.shade700
                                    ),)
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                        SizedBox(height: width*0.03,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Icon(Icons.credit_card,color: Colors.blue.shade900,),
                               SizedBox(width: width * 0.03,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Flipkart Axis Bank Credit Card",style: TextStyle(
                                     fontSize: width*0.04,
                                   ),),
                                   Text("Apply&enter world of unlimited benefits!",style: TextStyle(
                                       color: Colors.grey.shade700
                                   ),)
                                 ],
                               ),
                             ],
                           ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                        SizedBox(height: width*0.03,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Icon(Icons.calendar_today_rounded,color: Colors.blue.shade900,),
                               SizedBox(width: width * 0.03,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Flipkart Pay Later",style: TextStyle(
                                     fontSize: width*0.04,
                                   ),),
                                   Text("Get 10,000 worth Times Prime benefits",style: TextStyle(
                                       color: Colors.grey.shade700
                                   ),)
                                 ],
                               ),
                             ],
                           ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                        SizedBox(height: width*0.03,),


                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.03,),
            Container(
              height: width*0.7,
              width: width*1,
              color: Colors.white,
              padding: EdgeInsets.all(width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Account Settings",style:TextStyle(
                      fontSize: width*0.04,
                      fontWeight: FontWeight.w900
                  ),),
                  SizedBox(height: width*0.03,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.star_border,color: Colors.blue.shade900,),
                         SizedBox(width: width*0.03,),
                         Text("Flipkart Plus")
                       ],
                     ),
                     Icon(Icons.keyboard_arrow_right)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.account_circle_outlined,color: Colors.blue.shade900,),
                         SizedBox(width: width*0.03,),
                         Text("Edit Profile "),
                       ],
                     ),
                     Icon(Icons.keyboard_arrow_right)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.account_balance_wallet_outlined,color: Colors.blue.shade900,),
                         SizedBox(width: width*0.03,),
                         Text("Saved Cards & Wallet"),
                       ],
                     ),
                     Icon(Icons.keyboard_arrow_right)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.location_on_outlined,color: Colors.blue.shade900,),
                         SizedBox(width: width*0.03,),
                         Text("Saved Addresses"),
                       ],
                     ),
                     Icon(Icons.keyboard_arrow_right)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.language,color: Colors.blue.shade900,),
                         SizedBox(width: width*0.03,),
                         Text("Select Language"),
                       ],
                     ),
                     Icon(Icons.keyboard_arrow_right)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.notifications,color: Colors.blue.shade900,),
                         SizedBox(width: width*0.03,),
                         Text("Notifivation Settings"),
                       ],
                     ),
                     Icon(Icons.keyboard_arrow_right)
                   ],
                 ),

                ],
              ),
            ),
            SizedBox(height: width*0.03,),
            Container(
              height: width*0.35,
              width: width*1,
              color: Colors.white,
              padding: EdgeInsets.all(width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("My Acitvity",style:TextStyle(
                      fontSize: width*0.04,
                      fontWeight: FontWeight.w900)),
                  SizedBox(height: width*0.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.mode_edit_outlined,color: Colors.blue.shade900,),
                          SizedBox(width: width*0.03,),
                          Text("Reviews"),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.chat_sharp,color: Colors.blue.shade900,),
                          SizedBox(width: width*0.03,),
                          Text("Question & Answers"),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ],
              )

            ),
            SizedBox(height: width*0.03,),
            Container(
                height: width*0.35,
                width: width*1,
                color: Colors.white,
                padding: EdgeInsets.all(width*0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Earn with Flipkart",style:TextStyle(
                        fontSize: width*0.04,
                        fontWeight: FontWeight.w900)),
                    SizedBox(height: width*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star_border,color: Colors.blue.shade900,),
                            SizedBox(width: width*0.03,),
                            Text("Flipkart Creator Studio"),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.shop_two,color: Colors.blue.shade900,),
                            SizedBox(width: width*0.03,),
                            Text("Sell on Flipkart"),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ],
                )

            ),
            SizedBox(height: width*0.03,),
            Container(
                height: width*0.35,
                width: width*1,
                color: Colors.white,
                padding: EdgeInsets.all(width*0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Feedback & Information",style:TextStyle(
                        fontSize: width*0.04,
                        fontWeight: FontWeight.w900)),
                    SizedBox(height: width*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.insert_page_break_rounded,color: Colors.blue.shade900,),
                            SizedBox(width: width*0.03,),
                            Text("Terms,Policies and Licenses"),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.open_in_browser,color: Colors.blue.shade900,),
                            SizedBox(width: width*0.03,),
                            Text("Browse FAQs"),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ],
                )

            ),
            SizedBox(height: width*0.04,),
            Container(
              height: width*0.08,
              width: width*0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.01),
                border: Border.all(color: Colors.grey.shade300),
                color: Colors.white,
              ),
              child: Center(
                  child: Text("Log Out",style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.w700
                  ),)),
            )
          ],
        ),
      ),
    );
  }
}
