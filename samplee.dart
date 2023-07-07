import 'package:flutter/material.dart';
class sampp extends StatelessWidget {
  const sampp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          Container(
            height:500 ,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage("images.jpeg")
              ,fit: BoxFit.fill)
            ),

            child: Column(

              children: [
            SizedBox(height: 100,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Container(

                        height:200,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage("angular.png"),
                          fit: BoxFit.fill)


                        ),
                        child: Center(child: Text("angular")),

                      ),
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage("flutter.png"),fit: BoxFit.fill)

                      ),
                      child: Center(child: Text("flutter")),

                    ),

                  ],
                ),
                Text("Welcome to GT"),

              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),

            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("mi.png"),fit: BoxFit.fill)
                  )
                  ,
                ),
                Expanded(
                  child: Text("welcome to GT,"
                      "angular full stack developper&flutter full stack developer"),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("apple.png"),
                    fit: BoxFit.fill)

                  ),
                  child:Center(child: Text("Apple",style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),

            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("mi.png"),fit: BoxFit.fill)
                  )
                  ,
                ),
                Expanded(
                  child: Text("welcome to GT,"
                      "angular full stack developper&flutter full stack developer"),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("apple.png"),
                          fit: BoxFit.fill)

                  ),
                  child:Center(child: Text("Apple",style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
