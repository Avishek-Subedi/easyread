// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontsize = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TextField(
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize: _fontsize),
                maxLines: null,
              ),
            ),
            Slider(
              value: _fontsize,
              onChanged: (newsize) {
                setState(() {
                  _fontsize = newsize;
                });
              },
              min: 30,
              max: 200,
            )
          ],
        ),
      ),
    );
  }
}
