import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 139, 96, 131),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                      radius: 70.0,
                      backgroundImage:
                          AssetImage('images/img2.jpg'),
                  ),
                  Text(
                    'Mariam Ashraf',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 21 ,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 220, 231, 235),
                      fontFamily: 'SourceSansPro-Regular',
                    ),
                  ),
              SizedBox(
                height: 20.0,
                width: 160,
                child: Divider(
                  color: Colors.blueGrey.shade100,
                ),
              ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0) ,
                    child: ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Color.fromARGB(255, 139, 96, 131),
                      ),
                      title: Text(
                        '+9 1234 5678 1000',
                        style: TextStyle(
                          color: Color.fromARGB(255, 79, 55, 77),
                          fontFamily: 'SourceSansPro-Regular',
                          fontSize: 18,
                        ),
                      ),
                    )

                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0) ,
                    child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color:  Color.fromARGB(255, 139, 96, 131),
                        ),
                        title: Text(
                          'mariam@gmail.com',
                          style: TextStyle(
                            color: Color.fromARGB(255, 79, 55, 77),
                            fontFamily: 'SourceSansPro-Regular',
                            fontSize: 18,
                          ),
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}