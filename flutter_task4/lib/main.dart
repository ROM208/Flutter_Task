import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}
class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => pointsCounterState();
}

class pointsCounterState extends State<pointsCounter> {
  int teamA=0;

  int teamB=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Basketball Score Counter')),
          backgroundColor: Color.fromARGB(110, 183, 0, 255),
        ),
        body: Column(

            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Team A', style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        Text('$teamA', style: TextStyle(
                          fontSize: 150,
                        ),
                        ),
                        ElevatedButton(onPressed: (){
                          teamA++;
                          setState(() {

                          });
                        },
                          child: Text('+1 Point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Color.fromARGB(110, 183, 0, 255),
                              minimumSize: Size(150, 50)
                          ) ,
                        ),

                        ElevatedButton(onPressed: (){

                          setState(() {
                            teamA += 2 ;
                          });
                        },
                          child: Text('+2 Point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Color.fromARGB(110, 183, 0, 255),
                              minimumSize: Size(150, 50)
                          ) ,

                        ),


                        ElevatedButton(onPressed: (){

                          setState(() {
                            teamA += 3 ;
                          });
                        },
                          child: Text('+3 Point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Color.fromARGB(110, 183, 0, 255),
                              minimumSize: Size(150, 50)
                          ) ,

                        ),
                      ],

                    ),
                  ),

                  Container
                    (
                    height:500 ,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 0.5,
                    ),
                  ),

                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Team B', style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        Text('$teamB', style: TextStyle(
                          fontSize: 150,
                        ),
                        ),
                        ElevatedButton(onPressed: (){
                          teamB++;
                          setState(() {

                          });
                        },
                          child: Text('+1 Point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Color.fromARGB(110, 183, 0, 255),
                              minimumSize: Size(150, 50)
                          ) ,
                        ),

                        ElevatedButton(onPressed: (){

                          setState(() {
                            teamB += 2 ;
                          });
                        },
                          child: Text('+2 Point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Color.fromARGB(110, 183, 0, 255),
                              minimumSize: Size(150, 50)
                          ) ,

                        ),


                        ElevatedButton(onPressed: (){

                          setState(() {
                            teamB += 3 ;
                          });
                        },
                          child: Text('+3 point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Color.fromARGB(110, 183, 0, 255),
                              minimumSize: Size(150, 50)
                          ) ,

                        ),
                      ],

                    ),
                  ),

                ],
              ),
              const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                setState(() {
                  teamA=0;
                  teamB=0;
                });
              },
                child: Text('Reset',style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                ),),
                style:ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(150, 50)
                ) ,
              )
            ]

        ),
      ),
    );
  }
}