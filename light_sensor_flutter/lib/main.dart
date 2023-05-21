import 'package:flutter/material.dart';
import 'package:light/light.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sensorValue = 0;
  Light _light=Light();

  @override
  void initState() {
    super.initState();

    // Initialize the light sensor
    _light = Light();
    _light.lightSensorStream.listen((luxValue) {
      setState(() {
        sensorValue = luxValue;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Determine the background and text colors based on the current light level
    Color _backgroundColor = sensorValue < 50 ? Colors.black : Colors.white;
    Color textColor = sensorValue < 50 ? Colors.white : Colors.black;
    String img = sensorValue < 50 ? 'images/bulb_off.jpg' : 'images/bulb_on.jpg';
    String text = sensorValue < 50 ? 'Light Turned OFF'   : 'Light Turned ON';
    return MaterialApp(
      title: 'Light Sensor App',
      home: Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          title: Text('Light Sensor App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 24, color: textColor),
              ),
              Image.asset(
                img,
                width: 250,
                height: 450,
              ),
              SizedBox(height: 20),
              Text(
                'Sensor Value: $sensorValue',
                style: TextStyle(fontSize: 20, color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
