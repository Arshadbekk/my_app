import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'main.dart';

class apiIntegration extends StatefulWidget {
  const apiIntegration({super.key});

  @override
  State<apiIntegration> createState() => _apiIntegrationState();
}

class _apiIntegrationState extends State<apiIntegration> {
  getData(String pincode)async {
  var data = await http.get(Uri.tryParse("https://www.postpincode.in/api/getPostalArea.php?pincode=${pincode}")!);
  print(data.statusCode);
  print(data.body);
  datas=json.decode(data.body);
  print(datas[0]);
  setState(() {

  });
  }
  List datas=[];
  TextEditingController pincode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  getData(value);
                },
                controller: pincode,
                maxLength: 6,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                style: TextStyle(
                  fontSize: width*0.04,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    labelText: "Pincode",
                    labelStyle: TextStyle(
                        fontSize: width*0.04,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue
                    ),
                    hintText: "Pincode",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width*0.04,
                        color: Colors.black
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width*0.03),
                        borderSide: BorderSide(
                            color:Colors.blue
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width*0.03),
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )
                ),
              ),

              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        getData(pincode.text);
                      },
                      child: Text("get"))),
              ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: datas.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: width*0.3,
                    width: width*0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.04),
                        // color: Colors.blue,
                        border: Border.all(color: Colors.blue)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pincode:${datas[index]["Pincode"]}",style: TextStyle(
                            fontSize: width*0.04,
                            fontWeight: FontWeight.w600,
                          ),),
                          Text("Post Address:${datas[index]["PostOfficeAddress"]}",style: TextStyle(
                            fontSize: width*0.04,
                            fontWeight: FontWeight.w600,
                          ),),
                          Text("District:${datas[index]["District"]}",style: TextStyle(
                            fontSize: width*0.04,
                            fontWeight: FontWeight.w600,
                          ),),
                          Text("State:${datas[index]["State"]}",style: TextStyle(
                            fontSize: width*0.04,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: width*0.04,
                  );
              },

              )
            ],
          ),
        ),
      ),
    );
  }
}
