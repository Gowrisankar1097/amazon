import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/mobile.dart';



class amazon extends StatefulWidget {
  const amazon({Key? key}) : super(key: key);

  @override
  State<amazon> createState() => _amazonState();
}

class _amazonState extends State<amazon> {
  List a=[

    "assets/mobiles.jpg",
    "assets/fashions.jpg",
    "assets/elctronics.jpg",
    "assets/furniture.jpg",
    "assets/homeappliance.jpg",
    "assets/minitv.jpg",
    "assets/pharmacy.jpg",
    "assets/train.jpg",
    "assets/deals.png"
  ],
  b=[
    "Mobiles",
    "Fashions",
    "Electronics",
    "Furniture",
    "Home appliance",
    "Mini TV",
    "Pharmacy",
    "Trains"

        
  ],
  c=[
    "assets/electricitybill.jpg",
    "assets/phonebill.png",
    "assets/lpgbill.jpg",
    "assets/games.jpg"
  ],
  d=[
    "Electricity bill",
    "Postpaid bill",
    "LPG GAS bill",
    "GAMES",

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
       backgroundColor: Colors.white,
         flexibleSpace: Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               colors: [Color(0xFF85d9e3), Color(0xFFa5e7ce)],
               begin: Alignment.topLeft,
              end: Alignment.bottomRight,
             ),
           ),
        ),
    title:

      Container(
        //color: Colors.white,

        height: 40,
        width: 500,
       decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),color: Colors.white
        ),
        child:

            //Icon(Icons.search),
            TextFormField(
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 25),

              decoration:   InputDecoration(
                  //border:OutlineInputBorder(
                   // borderRadius: BorderRadius.circular(20),
                  //),
                hintText: 'Search Amazon.in',

                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  suffixIcon: Icon(Icons.document_scanner_rounded,)
              ),

            ),
         // Icon(Icons.document_scanner_outlined),





        ),






        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mic_none,color: Colors.black,),
          )
        ],
       // leading: Icon(Icons.search),
      ),
      body:

      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              Container(

                height: 50,
             //   width: 400,
                decoration: BoxDecoration(
                 gradient: LinearGradient(colors:
                 [Color(0xFFb8e9ee), Color(0xFFc8f1e1)],
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,)

                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("Deliver to address,600001"),
                  ],
                ),
              ),
              Container(
                height: 120,

                child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                   itemCount: 8,
                    itemBuilder: (BuildContext context,int index)

                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            new GestureDetector(
                              onTap:(){
                                List a=[];Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mobiles(),
                                  ),
                                );
                              }
                              ,
                              child: Container(

                                height: 80,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),

                                ),

                              ),
                            ),
                           Expanded(child: Text(b[index])),
                          ],
                        ),
                      );



                    }






                  ),

                ),
              Container(
                height: 340,
                width: 400,
                decoration: BoxDecoration(border: Border.all()),
                child: CarouselSlider.builder(

                    options: CarouselOptions(

                       height: 400,
                       aspectRatio: 8/9,
                      viewportFraction: 1,
                       initialPage: 0,
                       enableInfiniteScroll: true,
                       reverse: false,
                       autoPlay: true,
                       autoPlayInterval: const Duration(seconds: 2),
                       autoPlayAnimationDuration: const Duration(milliseconds: 800),
                       autoPlayCurve: Curves.fastOutSlowIn,
                       enlargeCenterPage: true,
                       enlargeFactor: 0.3,
                      // onPageChanged: callbackFunction,
                       scrollDirection: Axis.horizontal,
                     ),

                     itemCount: 8,
                     itemBuilder: (BuildContext context, int index, int pageViewIndex)
                         {
                           return
//194201000023492
                             Column(
                               children: [
                                 Container(

                                 height: 330,
                                 width: 400,
                                 //color: Colors.cyanAccent,
                            decoration: BoxDecoration(
                              //border: Border.all(),
                                 image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill)),
                                  // child: Text(b[index]),
                           ),
                               //  Text(b[index],style: TextStyle(fontSize: 20),),


                               ],


                             );

                         }

                   ),



              ),

              Container(
                height: 200,
                decoration: BoxDecoration(
                  //border: Border.all(),
                ),

                child: ListView.builder(
                    scrollDirection:Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (BuildContext context,int index)

                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(

                          children: [
                            Expanded(child: Text(b[index])),

                            Row(
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                   // border: Border.all(),


                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),

                                  ),

                                ),
                            //    Expanded(child: Text(b[index])),
                              ],
                            ),
                          ],
                        ),
                      );



                    }






                ),

              ),
              SizedBox(height: 10,),
              Text("Amazon Pay I Get rewarded on every utility transaction",
                style:TextStyle(fontSize: 20,color: Colors.green), ),
              SizedBox(height: 10,),
              Container(
                height: 500,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        childAspectRatio: 2/ 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 4,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          Container(
                           height:160,
                            width: 200,

                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage(c[index]),
                                fit: BoxFit.fill)),

                          ),
                           Text(d[index]),
                        ],
                      );

                    }),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
