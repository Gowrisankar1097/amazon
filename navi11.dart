import 'package:flutter/material.dart';
import 'package:untitled/Amazon.dart';
import 'package:untitled/imagee.dart';
import 'package:untitled/instagram.dart';
import 'package:untitled/listt.dart';
class naviga extends StatefulWidget {
  const naviga({Key? key}) : super(key: key);

  @override
  State<naviga> createState() => _naviiiState();
}

class _naviiiState extends State<naviga> {
  int a=0;
final Page=[
  amazon(),
  lists(),

  imag(),
  spotfi(),


]  ;

void tap(index)
{
  setState(() {
    a=index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Page[a],

      bottomNavigationBar:
      BottomNavigationBar(
        backgroundColor: Colors.red,
        items: [


          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Home',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting',backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.image),label: 'Image',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.music_video_sharp),label: 'spotify',backgroundColor: Colors.orange),
          
        ],

        currentIndex: a,
        onTap: tap,


      ),
    );
  }
}
