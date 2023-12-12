import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/api_integration.dart';
import 'package:my_app/bottomnavbar.dart';
import 'package:my_app/color_page.dart';
import 'package:my_app/flip.dart';
import 'package:my_app/gridview_page.dart';
import 'package:my_app/lisview_page.dart';
import 'package:my_app/new_file.dart';
import 'package:my_app/packages.dart';
import 'package:my_app/page1.dart';
import 'package:my_app/page4.dart';
import 'package:my_app/splashscreen.dart';
import 'package:my_app/tabbar.dart';
import 'package:my_app/tabbar2.dart';
import 'package:my_app/task2.dart';
import 'package:my_app/textformpage.dart';
import 'package:my_app/video4.dart';
import 'package:my_app/widgets.dart';
var width;
var height;
void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        home: apiIntegration(),
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme()
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
