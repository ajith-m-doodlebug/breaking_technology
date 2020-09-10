import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home_screen.dart';
import 'package:technews/constants.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:technews/get_show_data/collection.dart';

/// The [firstTime] is true when the application runs for the first time
/// If the [firstTime] is true, in the leading [chooseNavigator] is called with returns
/// a [HOME] button.
/// The [firstTime] is set to false in the initState of the [HomeScreen]
/// When comes back to [TopNewsScreen] it returns null in the leading.

bool firstTime = true;

class TopNewsScreen extends StatefulWidget {
  static String id = 'news_screen';

  @override
  _TopNewsScreenState createState() => _TopNewsScreenState();
}

class _TopNewsScreenState extends State<TopNewsScreen> {
  final FirebaseMessaging _messaging = FirebaseMessaging();
  Widget chooseNavigator() {
    return IconButton(
      icon: Icon(
        Icons.home,
        color: color,
      ),
      onPressed: () {
        setState(() {
          Navigator.pushNamed(context, HomeScreen.id);
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _messaging.configure(
      onMessage: (Map<String, dynamic> message) async {},
      onLaunch: (Map<String, dynamic> message) async {},
      onResume: (Map<String, dynamic> message) async {},
    );
    _messaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Top News',
          style: TextStyle(
            color: color,
            fontSize: 22,
            fontFamily: 'TitleFont',
          ),
        ),
        leading: firstTime ? chooseNavigator() : null,
      ),
      body: Column(
        children: [
          Collection(
            collectionName: 'topnews',
          ),
        ],
      ),
    );
  }
}
