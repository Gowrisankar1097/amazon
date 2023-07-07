import 'package:flutter/material.dart';
import 'package:untitled/Amazon.dart';
import 'package:untitled/imagee.dart';
import 'package:untitled/listt.dart';
import 'package:untitled/login.dart';
import 'package:untitled/mobile.dart';
import 'package:untitled/navi11.dart';
import 'package:untitled/samone.dart';
import 'package:untitled/samplee.dart';
import 'package:untitled/valid.dart';
import 'package:untitled/validation.dart';

import 'instagram.dart';
import 'navi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: valida()
    );
  }
}

