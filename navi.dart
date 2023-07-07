import 'package:flutter/material.dart';

import 'listt.dart';

class navii extends StatefulWidget {
  const navii({Key? key}) : super(key: key);

  @override
  State<navii> createState() => _naviiState();
}




class _naviiState extends State<navii> {

 int _index= 0 ;

 final pages = [

   lists(),
   Text("hello"),

 ] ;

 void tap(index)
 {
   setState(() {
     _index = index ;
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
          ],
          currentIndex: _index,
          onTap: tap,
        ),




    );
  }
}
