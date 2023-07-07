import 'package:flutter/material.dart';
class lists extends StatelessWidget {
  const lists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Welcome")),
        leading: Icon(Icons.arrow_back),
        actions: [],
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Center(child: Text("Reports")),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.lightGreen,

              child: ListTile(

                leading: Icon(Icons.arrow_back_ios),
                title: Center(child: Text("Reports1")),
                trailing: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.cyan,
              child: ListTile(
                leading: Icon(Icons.arrow_back_ios),
                title: Center(child: Text("Reports2")),
                trailing: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.cyanAccent,
              child: ListTile(
                leading: Icon(Icons.arrow_back_ios),
                title: Center(child: Text("Reports")),
                trailing: Icon(Icons.person),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Center(child: Text("Help?")),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.yellow,
              child: ListTile(
                leading: Icon(Icons.local_airport),
                title: Center(child: Text("Logout")),
                trailing: Icon(Icons.chevron_right_outlined),
              ),
            ),
          )

        ],

      ),
    );
  }
}
