import 'package:flutter/material.dart';
import 'package:testcode/view/bottomscreen.dart';
import 'package:testcode/view/firstScreen.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  BottomScreen(),
    );
  }
}