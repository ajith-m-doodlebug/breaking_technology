import 'package:flutter/material.dart';

import 'package:technews/widgets_in_home/template_card.dart';

///  The [TemplateList] is a Horizontal List in the home screen which contains
///  three [TemplateCard]
class TemplateList extends StatelessWidget {
  TemplateList({
    this.templateCard1,
    this.templateCard2,
    this.templateCard3,
  });

  final TemplateCard templateCard1;
  final TemplateCard templateCard2;
  final TemplateCard templateCard3;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    List<TemplateCard> displayCard = [
      templateCard1,
      templateCard2,
      templateCard3
    ];
    return Expanded(
      flex: 6,
      child: Container(
        width: width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, int) {
            return displayCard[int];
          },
          itemCount: displayCard.length,
        ),
      ),
    );
  }
}
