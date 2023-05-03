import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff46322B),
      ),
    );
  }
}