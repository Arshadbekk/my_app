import 'package:flutter/material.dart';

class colorPage extends StatefulWidget {
  const colorPage({super.key});

  @override
  State<colorPage> createState() => _colorPageState();
}

class _colorPageState extends State<colorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 120,
                  height: 300,
                  color: Colors.red,
                ),
                Container(
                  width: 120,
                  height: 300,
                  color: Colors.blue,
                ),
                Container(
                  height: 300,
                  width: 115,
                  color: Colors.blue,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 120,
                  color: Colors.purple,
                ),
                Container(
                  height: 200,
                  width: 120,
                  color: Colors.orange,
                ),
                Container(
                  height: 200,
                  width: 115,
                  color: Colors.yellow,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 213,
                  color: Colors.purple,
                ),
                Container(
                  width: 120,
                  height: 213,
                  color: Colors.purple,
                ),
                Container(
                  width: 115,
                  height: 213,
                  color: Colors.yellow,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
