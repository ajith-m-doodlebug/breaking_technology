import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';
import 'screens/top_news_screen.dart';
import 'screens/news_screen.dart';
import 'screens/mobile_screen.dart';
import 'screens/laptop_screen.dart';
import 'screens/about_us.dart';
import 'screens/terms_conditions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue,
      statusBarColor: Colors.blue,
    ));
    return MaterialApp(
      initialRoute: TopNewsScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        TopNewsScreen.id: (context) => TopNewsScreen(),
        NewsScreen.id: (context) => NewsScreen(),
        MobileScreen.id: (context) => MobileScreen(),
        LaptopScreen.id: (context) => LaptopScreen(),
        AboutUs.id: (context) => AboutUs(),
        TermsConditions.id: (context) => TermsConditions(),
      },
    );
  }
}
