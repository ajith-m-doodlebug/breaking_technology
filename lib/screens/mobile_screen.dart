import 'package:flutter/material.dart';
import 'package:technews/get_show_data/collection.dart';

class MobileScreen extends StatefulWidget {
  static String id = 'mobile_screen';
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Mobile Review',
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
            collectionName: 'mobilereview',
          ),
        ],
      ),
    );
  }
}
