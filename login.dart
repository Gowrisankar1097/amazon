import 'package:flutter/material.dart';
import 'package:untitled/navi.dart';
import 'package:untitled/navi11.dart';
class loginn extends StatelessWidget {
  const loginn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 800,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(),
             // image: DecorationImage(
             //   image: AssetImage("images.jpeg"),
             //   fit: BoxFit.fill,
             //                       ),
                                      ),
            child:
            Column(
              children: [
                SizedBox(height: 100,),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)) ,
                  child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
    },
                                decoration:
                                      InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                        ),
                                        hintText: "Enter your name",
                                          labelText: "Username",
                                        icon: Icon(Icons.person),

                                      ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(decoration:
                                InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  hintText: "Enter your name",
                                  labelText: "Username",
                                  icon: Icon(Icons.person),
                                  ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            ElevatedButton(
                              // style: ButtonStyle(backgroundColor: Colors.cyanAccent),
                              onPressed: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const naviga()),
                                );
                              }, child: Text("Login"),)
                          ],
                        ),
                ),
                SizedBox(height: 100,),
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("assets/images.jpeg"),
                          fit: BoxFit.fill)
                  ),
                )
              ],
            ),
          ),
         ],
      ),
    );
  }
}
