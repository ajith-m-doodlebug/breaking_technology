import 'package:flutter/material.dart';
import 'package:technews/get_show_data/collection.dart';

class LaptopScreen extends StatefulWidget {
  static String id = 'laptop_screen';
  @override
  _LaptopScreenState createState() => _LaptopScreenState();
}

class _LaptopScreenState extends State<LaptopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Laptop Review',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 22,
            fontFamily: 'TitleFont',
          ),
        ),
      ),
      body: Column(
        children: [
          Collection(
            collectionName: 'laptopreview',
          ),
        ],
      ),
    );
  }
}
