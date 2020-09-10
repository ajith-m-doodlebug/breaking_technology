import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Topic extends StatelessWidget {
  Topic({@required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            letterSpacing: 20,
            fontFamily: 'TitleFont',
          ),
        ),
      ),
    );
  }
}
