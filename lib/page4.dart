import 'package:flutter/material.dart';

import 'main.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  String? valueChoose;
  var listitem=[
    "item1",
    "item2",
    "item3",
    "item4"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 4"),
        centerTitle: true,
        actions: [
          Icon(Icons.add),
          SizedBox(width: width*0.03,)
        ],
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(width*0.05),
          child: Container(
            padding: EdgeInsets.only(left: width*0.05,right: width*0.05),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,),
              borderRadius: BorderRadius.circular(width*0.03)
            ),
            child: DropdownButton(
              value: valueChoose,
              hint: Text("Select items"),
              dropdownColor: Colors.white,
              icon:Icon( Icons.keyboard_arrow_down_sharp),
              iconSize: width*0.08,
              isExpanded: true,
              underline: SizedBox(),
              onChanged: (newValue){
                setState(() {
                  valueChoose=newValue;
                });
              },
              items: listitem.map((valueItem){
                return DropdownMenuItem(
                  value: valueItem,
                    child: Text(valueItem),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
