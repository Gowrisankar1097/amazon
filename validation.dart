import 'package:flutter/material.dart';
import 'package:untitled/navi11.dart';
class valida extends StatefulWidget {
  const valida({Key? key}) : super(key: key);

  @override
  State<valida> createState() => _validaState();
}

class _validaState extends State<valida> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:
      Form(
        key: _key,
        child: Column(
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
                              if (value!.isEmpty ||
                                  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))

                               {
                                return 'Please enter valid emailid';
                              }
                            },
                            decoration:
                            InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: "Enter your mailid:",
                              labelText: "mailid:",
                              icon: Icon(Icons.person),

                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (va) {
                              if(va!.isEmpty ||
                                  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(va))
                              {
                                return 'Enter your correct password';
                              }


                            },
                            decoration:
                          InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: "Enter your Password",
                            labelText: "Password",
                            icon: Icon(Icons.person),

                          ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            onPressed: (){
                              if(_key.currentState!.validate())
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const naviga()),
                                );

                              }

                              else ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('please correct enter mailid & password')),
                              );


                            }, child: Text("Login")),

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
      ),

    );
  }
}
