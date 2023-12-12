import 'package:flutter/material.dart';

import 'main.dart';

class listTask extends StatefulWidget {
  const listTask({super.key});

  @override
  State<listTask> createState() => _listTaskState();
}

class _listTaskState extends State<listTask> {
  List images=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx-tUcqDkkeDJpZd7bLXJgwAAyS8OtVR6Lh0LADP_BJ71EZrLo0SEjdaUfxVkMQOCdY1k&usqp=CAU",
    "https://images.hindustantimes.com/auto/img/2023/05/08/600x338/Honda_electric_motorcycles_1682760893792_1683521595769.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx4reEUhwHHPAZPVfWAEjrsYdEV16Nw4KzqN6cZ0DK1YNlsxY6mPsWqCeqEPeaIgS6HIM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTk5TItvRIoVG5sjJhszdrFFRZPHChrbI9DngLJwvR_Va_NJ0iON081NaxBfxPS_BI3Rw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOecdPTQ_sp637Bu2C9LkVR3qqhgezV0jIwYI4R936tOIrEQl5K98Ovoi-LHfNAN8rkM&usqp=CAU",
  ];
  List text1=[
    "Bike-1",
    "Bike-2",
    "Bike-3",
    "Bike-4",
    "Bike-5",
  ];
  List cars=[
    {
      "image":"images/audi.jpg",
      "text1":"Audi",
      "text2":"Car 1"
    },
    {
      "image":"images/benz.jpg",
      "text1":"Benz",
      "text2":"Car 2"
    },
    {
      "image":"images/bmw.jpg",
      "text1":"BMW",
      "text2":"Car 3",
    },
    {
      "image":"images/bugati.jpg",
      "text1":"Bugati",
      "text2":"Car 4"
    },
    {
      "image":"images/ford.jpg",
      "text1":"Ford",
      "text2":"Car 5"
    },
    {
      "image":"images/godzila.jpg",
      "text1":"GTR",
      "text2":"Car 6"
    },
    {
      "image":"images/lambo.jpg",
      "text1":"Lambo",
      "text2":"Car 7"
    },
    {
      "image":"images/mustang.jpg",
      "text1":"Mustang",
      "text2":"Car 8"
    },
    {
      "image":"images/porsche.jpg",
      "text1":"Porsche",
      "text2":"Car 9"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("List And Grid Task"),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            Container(
              width: width*1,
              height: width*0.4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                return Container(
                    width: width*0.3,
                    height: width*0.3,
                     margin: EdgeInsets.all(width*0.03),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.02),
                        color: Colors.white,
                        boxShadow:[
                          BoxShadow(
                              color: Colors.black.withOpacity(0.14),
                              blurRadius: 4,
                              spreadRadius: 2,
                              offset: Offset(0, 4)

                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width*0.2,
                          height: width*0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.02),
                              image: DecorationImage(
                                  image: NetworkImage(images[index]),fit: BoxFit.fill
                              )
                          ),
                        ),
                        Text(text1[index])
                      ],
                    ),
                  );
                },

              ),
            ),
            SizedBox(height: width*0.03,),
            Text("CARS",style: TextStyle(
              fontSize:width*0.07
            ),),
            SizedBox(height: width*0.02,),
            Expanded(
              child: GridView.builder(
                itemCount: cars.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  crossAxisSpacing: width*0.03,
                  mainAxisSpacing: width*0.03,
                  childAspectRatio: 1
                ),

                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                    height: width*0.4,
                    width: width*0.35,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width*0.02),
                      boxShadow:[
                        BoxShadow(
                            color: Colors.black.withOpacity(0.14),
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: Offset(0, 4)

                        ),

                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Container(
                          width: width*0.17,
                          height: width*0.17,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.02),
                              image: DecorationImage(
                                  image: AssetImage(cars[index]["image"]),fit: BoxFit.fill
                              )
                          ),
                        ),
                        Text(cars[index]["text1"]),
                        Text(cars[index]["text2"])
                      ],
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
