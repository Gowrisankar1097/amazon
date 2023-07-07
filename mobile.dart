import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Mobiles extends StatefulWidget {
  const Mobiles({Key? key}) : super(key: key);

  @override
  State<Mobiles> createState() => _MobilesState();
}

class _MobilesState extends State<Mobiles> {
  List a=[
    "assets/opppo1.jpg",
    "assets/opppo2.jpg",
    "assets/opppo3.jpg",
    "assets/opppo4.jpg",
    "assets/opppo5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
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
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title:

        Container(
          //color: Colors.white,

          height: 40,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),color: Colors.white
          ),
          child:

          //Icon(Icons.search),
          TextFormField(
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 15),

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
            child: Icon(Icons.mic,color: Colors.black,),
          )
        ],

      ),
      body:

      SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
          color: Colors.white,
              child: Center(
                child: Card(
                 // shape: Border.all(color: Colors.grey) ,
                  child: Container(

                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(//border: Border.all(),

                        color: Colors.black12
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("hdfc.png"),fit: BoxFit.fill)
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("icici.png"),fit: BoxFit.fill)
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 140,
                          child: Column(
                            children: [
                              Text("₹2,500 Additional Discount*",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                              Text("on select Bank Cards",style: TextStyle(fontSize: 8),),
                             Text("*T&C apply"),
                            ],
                          ),
                        ),

                      ],

                    ),
                  ),
                ),
              ),
            ),
            Stack(

              children: [



               Container(
                 color: Colors.white,
                 child: CarouselSlider.builder(

                     options: CarouselOptions(
                       height: 500,
                       aspectRatio: 8/9,
                       viewportFraction: 1,
                       initialPage: 0,
                       enableInfiniteScroll: true,
                       reverse: false,
                       autoPlay: false,
                       autoPlayInterval: const Duration(seconds: 2),
                       autoPlayAnimationDuration: const Duration(milliseconds: 800),
                       autoPlayCurve: Curves.fastOutSlowIn,
                       enlargeCenterPage: true,
                       enlargeFactor: 0.3,
                       // onPageChanged: callbackFunction,
                       scrollDirection: Axis.horizontal,
                     ),

                     itemCount: a.length,
                     itemBuilder: (BuildContext context, int index, int pageViewIndex)
                     {
                       return
//194201000023492
                         Column(
                           children: [
                             Container(
                               height: 430,
                               width: 400,
                               //color: Colors.cyanAccent,
                               decoration: BoxDecoration(

                                   image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill)),
                               // child: Text(b[index]),
                             ),
                             //Text(b[index],style: TextStyle(fontSize: 20),),


                           ],


                         );

                     }

                 ),
               ),


               new Positioned(
                  right: 10,
                    child: Container(

                                height: 40,
                               width: 40,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                   // border: Border.all(),
                                 shape: BoxShape.circle
                               ),
                               child: Icon(Icons.share),
                ),),
                Positioned(
                  bottom: 20,
                  child: Container(
                    height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.favorite_border,color: Colors.black),
                ),),




                Container(
                  alignment: Alignment.topLeft,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.red.shade900,
                    border: Border.all(color: Colors.redAccent),
                    shape: BoxShape.circle

                  ),
                  child: Column(
                    children: [
                      Center(child: Text(" 14% ",style: TextStyle(color: Colors.white),)),
                      Center(child: Text("off",style: TextStyle(color: Colors.white),))
                    ],
                  ),
                ),

              ],
            ),

            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Visit the Oppo Store",style: TextStyle(color: Color(0xFF146978),fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Oppo F23 5G(Bold Gold,8GB RAM,256GB storage)| 5000 mAh battery with 67W SUPERVOOC Charger | 64MP Rear Triple AI Camera with Microlens | 6.72''FHD+ 120Hz Display | with Offers"),
                  ),

                ],
              ),
            ),

            Container(
              color: Colors.white,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        text: '-14% ',
                        style: TextStyle(color: Colors.red,fontSize: 30),

                        children: const <TextSpan>[
                          TextSpan(text: '₹',style: TextStyle(fontSize: 15,color: Colors.black)),
                          TextSpan(text: '24,998', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),

                        ],
                      ),
                    ),
                  ),

                  Text.rich(TextSpan(
                text: 'M.R.P.: ',
                children: <TextSpan>[
                  new TextSpan(
                    text: '₹28,999',
                    style: new TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),

                ],
              ),),



            SizedBox(height: 10,),
            RichText(text: TextSpan(
              text: 'EMI ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14),
    children: const <TextSpan>[
        TextSpan(text: 'from ₹1,194.No Cost EMI available.',style: TextStyle(fontWeight: FontWeight.normal)),
    TextSpan(text: 'EMI options',style: TextStyle(color: Color(0xFF146978),fontWeight: FontWeight.normal)),
    TextSpan(text: 'Incllusive of all taxes'),
    ],



            )),])
            ),

           Container(
             color: Colors.white,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:[
                RichText(text: TextSpan(
              text: 'FREE delivery',style: TextStyle(color: Color(0xFF146978)),
              children: const <TextSpan>[
                TextSpan(text: 'May 19-27',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 19)),
              ]
            )),
                 Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(

                  children: [
                    TextSpan(
                        style: TextStyle(color: Colors.cyan)
                    ),


                    WidgetSpan(
                      child: Icon(Icons.add_location_outlined,size: 15,),
                    ),
                    TextSpan(
                        text: '  Deliver to Address'
                        ,
                        style: TextStyle(fontSize: 15,color: Color(0xFF146978))
                    )
                  ],
                ),
              ),
            ),

                  Text("This item will be released on may 18, 2023.  ",style: TextStyle(color: Colors.green,fontSize: 19)),

                  Text("Pre-order now.",style: TextStyle(color: Colors.black,fontSize: 15)),
                  SizedBox(height: 10,),
                  SizedBox(height: 50,

                        width: 400,





                        child: ElevatedButton

                          (style: ElevatedButton.styleFrom(

                          primary: Colors.orange,

                        shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(50)

                        ),



                        ),



                            onPressed: (){}, child: Text("Pre-order now",style: TextStyle(color: Colors.black),))),
                  SizedBox(height: 10),
                  Text.rich(
              TextSpan(

                children: [
                  TextSpan(
                    style: TextStyle(color: Colors.cyan)
                  ),


                  WidgetSpan(
                    child: Icon(Icons.security,size: 15,),
                  ),
                  TextSpan(
                    text: '  Secure transaction'
                      ,
                    style: TextStyle(fontSize: 15,)
                  )
                ],
              ),
            ),
                  SizedBox(
              height: 10,
            ),
                  Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                  text: 'Sold by',style: TextStyle(color: Colors.black,fontSize: 17),
                  children: const <TextSpan>[
                    TextSpan(text: ' Appario Retail Private Ltd',style:TextStyle(color: Color(0xFF146978))),
                    TextSpan(text: ' and'),
                    TextSpan(text: ' Fulfilled by Amazon.',style: TextStyle(color:Color(0xFF146978)))
                  ]
              )),
            ),
               ],
             ),
           ),







          ],
        ),
      ),


    );
  }
}



