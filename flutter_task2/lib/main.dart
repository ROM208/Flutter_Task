import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text("Birthday Card"),
        backgroundColor: Color.fromARGB(255, 122, 0, 150),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Image.asset('images/birthday.jpg'),
          Text(
              "Happy Birthday !!",
            style: TextStyle(fontSize: 30,),
            ),
        ],
      ),
    ),
    );
  }
}