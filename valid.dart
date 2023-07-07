import 'package:flutter/material.dart';



class validd extends StatefulWidget {
  const validd({Key? key}) : super(key: key);

  @override
  State<validd> createState() => _validdState();
}

class _validdState extends State<validd> {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(),

      body: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(height: 100,),

            TextFormField(
              validator: (val)
              {
                if(val==null || val.isEmpty)
                  {
                    return 'Please enter name';
                  }
              },
            ),
            TextFormField(
                       validator: (val) {
                         if (val!.isEmpty ||
                             RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val))
                         {
                           return 'Enter a valid email!';
                         }
                                         }

            ),

            SizedBox(height: 100,),
            ElevatedButton(
                onPressed: (){
                  if(_formkey.currentState!.validate())
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('ok')),
                      );
                    }


            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}

