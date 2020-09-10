import 'package:flutter/material.dart';
import 'package:technews/widgets_in_home/template_list.dart';

/// The [TemplateCard] is the single card in the [TemplateList]
class TemplateCard extends StatefulWidget {
  TemplateCard({this.image, this.route});
  final String image;
  final String route;

  @override
  _TemplateCardState createState() => _TemplateCardState();
}

class _TemplateCardState extends State<TemplateCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.0),
      child: InkWell(
        highlightColor: Colors.transparent,
        onTap: () {
          setState(() {
            Navigator.pushNamed(context, widget.route);
          });
        },
        child: Ink(
          height: 240.0,
          width: 240.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}
