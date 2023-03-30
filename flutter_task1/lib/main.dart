import 'package:flutter/material.dart';
  void main() {
  runApp(const MyApp());
  }
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
  // Inner UI of the application
	   home: const MyHomePage(title: 'First Application'),
	);
}
}
class MyHomePage extends StatelessWidget {
const MyHomePage({Key? key, required this.title}) : super(key: key);
final String title;

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text(title),
    backgroundColor: const Color.fromARGB(255, 181, 74, 195),
	),
	
	body: const Center(
		// Sets the content of the Application
		child: Text(
		'Mariam Ashraf',
	  )
  ),
	);
}
}
