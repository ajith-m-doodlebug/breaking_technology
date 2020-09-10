import 'package:flutter/material.dart';
import 'package:technews/get_show_data/collection.dart';

class NewsScreen extends StatefulWidget {
  static String id = 'top_news_screen';
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Tech News',
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
            collectionName: 'technews',
          ),
        ],
      ),
    );
  }
}
