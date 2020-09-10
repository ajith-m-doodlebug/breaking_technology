import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  static String id = 'about_us';

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Text(
          'About Us',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            AboutTile(
              title: 'A Product Of',
              image: 'images/doodlebug.png',
            ),
            AboutTile(
              title: 'The DooDle Bug\'s First Product ',
              image: 'images/breakingbox.png',
            ),
          ],
        ),
      ),
    );
  }
}

class AboutTile extends StatelessWidget {
  AboutTile({this.title, this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          height: 200.0,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
