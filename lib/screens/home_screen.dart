import 'package:flutter/material.dart';

import 'package:technews/constants.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'top_news_screen.dart';
import 'news_screen.dart';
import 'mobile_screen.dart';
import 'laptop_screen.dart';
import 'about_us.dart';
import 'terms_conditions.dart';
import 'package:technews/drawer_tile.dart';

import 'package:technews/widgets_in_home/topic.dart';
import 'package:technews/widgets_in_home/template_card.dart';
import 'package:technews/widgets_in_home/template_list.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    setState(() {
      firstTime = false;
    });
    super.initState();
  }

  void customLaunch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('hi');
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return SystemNavigator.pop();
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue),
          //automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'B T',
            style: kTitleTextStyle,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Text(
                      'Breaking Technology',
                      style: kTitleTextStyle,
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      child: Image.asset('images/breakingbox.png'),
                    ),
                  ],
                ),
              ),
              DrawerTile(
                icon: Icons.info,
                title: 'About Us',
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, AboutUs.id);
                  });
                },
              ),
              DrawerTile(
                icon: Icons.mail,
                title: 'Contact Us',
                onTap: () {
                  customLaunch(
                    'mailto:breakingtechnology5@gmail.com?subject=Hello! I am your user&body=',
                  );
                },
              ),
              DrawerTile(
                icon: Icons.favorite,
                title: 'Instagram',
                onTap: () {
                  customLaunch(
                    'https://instagram.com/_breakingtech?igshid=145556cl2sg2z',
                  );
                },
              ),
              DrawerTile(
                icon: Icons.speaker_notes,
                title: 'Terms and Conditions',
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, TermsConditions.id);
                  });
                },
              ),
              DrawerTile(
                icon: Icons.feedback,
                title: 'Feedback',
                onTap: () {
                  customLaunch(
                    'mailto:breakingtechnology5@gmail.com?subject=User\'s Feedback&body=',
                  );
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            kHomeScreenDivider,
            Topic(
              title: 'NEWS',
            ),
            kHomeScreenDivider,
            TemplateList(
              templateCard1: TemplateCard(
                image: 'images/topnews.png',
                route: TopNewsScreen.id,
              ),
              templateCard2: TemplateCard(
                image: 'images/news.png',
                route: NewsScreen.id,
              ),
            ),
            kHomeScreenDivider,
            Topic(
              title: 'REVIEW',
            ),
            kHomeScreenDivider,
            TemplateList(
              templateCard1: TemplateCard(
                image: 'images/mobile.png',
                route: MobileScreen.id,
              ),
              templateCard2: TemplateCard(
                image: 'images/laptop.png',
                route: LaptopScreen.id,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
