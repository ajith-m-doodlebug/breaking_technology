import 'package:flutter/material.dart';
import 'package:technews/constants.dart';

class PageViewPages extends StatelessWidget {
  const PageViewPages(
      {this.title, this.image, this.para1, this.para2, this.para3, this.para4});

  final String title;
  final String image;
  final String para1;
  final String para2;
  final String para3;
  final String para4;
  Widget availableParagraph(String para) {
    if (para != null) {
      return Column(
        children: [
          Text(
            para,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(height: 10.0),
        ],
      );
    } else if (para == null) {
      return SizedBox(height: 0.0);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(8.0),
                width: width,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TitleFont',
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: color, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                height: 250.0,
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(color: color, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(8.0),
                width: width,
                child: Column(
                  children: [
                    availableParagraph(para1),
                    availableParagraph(para2),
                    availableParagraph(para3),
                    availableParagraph(para4),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: color, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
