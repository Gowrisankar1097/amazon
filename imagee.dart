import 'package:flutter/material.dart';
class imag extends StatelessWidget {
  const imag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
                    Container(
                        height: 790,
                       width: 400,
                       decoration: BoxDecoration(
                           border: Border.all(),
                           borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage("assets/images.jpeg"),fit: BoxFit.fill)
                                ),
                         child: Column(
                                children: [

                                  Container(
                                 height: 300,
                                 width: 300,
                                  decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)
                                             ),
                                     child: Row(
                                        children: [
                                          Container(
                                             height:150,
                                                width: 140,
                                                 decoration: BoxDecoration(
                                                             //border: Border.all(),
                                                               borderRadius: BorderRadius.circular(20),
                                                        // image: DecorationImage(image: AssetImage("mi.png"),fit: BoxFit.fill)

                                                           ),
                                                 child: Column(
                                                     children: [
                                                       Container(
                                                          height:120,
                                                          width: 150,
                                                           decoration: BoxDecoration(
                                                               //border: Border.all(),
                                                                 borderRadius: BorderRadius.circular(20),
                                                                  image: DecorationImage(image: AssetImage("assets/mi.png"),fit: BoxFit.fill)

                                                               ),


                                                                 ),
                                                            Text("mi",style: TextStyle(color: Colors.white),),

                                                            ],
                                                       ),


                                                     ),

                                         Container(
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                            //border: Border.all(),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Container(
                              height:120,
                              width: 150,
                              decoration: BoxDecoration(
                                //border: Border.all(),
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage("assets/apple.png"),fit: BoxFit.fill)

                              ),


                            ),
                            Text("Apple",style: TextStyle(color: Colors.white),),

                          ],
                        ),

                      ),


                                        ],
                  ),

                ),
                                  Container(
                                    height: 200,
                                    width: 200,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage("assets/mi.png"))
                                          ),
                                        ),
                                        Text("MI,APPLE")



                                      ],
                                   ),

          ),


              ],

            ),
          )

        ],

      ),
    );
  }
}
