import 'package:flutter/material.dart';
import 'page_view_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;

class Collection extends StatelessWidget {
  Collection({this.collectionName});
  final String collectionName;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection(collectionName).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return LinearProgressIndicator();
        }
        final collection = snapshot.data.documents.reversed;
        List<PageViewPages> createPages = [];
        for (var info in collection) {
          final title = info.data['title'];
          final image = info.data['image'];
          final para1 = info.data['para1'];
          final para2 = info.data['para2'];
          final para3 = info.data['para3'];
          final para4 = info.data['para4'];
          final createPage = PageViewPages(
            title: title,
            image: image,
            para1: para1,
            para2: para2,
            para3: para3,
            para4: para4,
          );
          createPages.insert(0, createPage);
        }
        return Expanded(
          child: PageView.builder(
            itemBuilder: (context, position) {
              return createPages[position];
            },
            itemCount: createPages.length,
          ),
        );
      },
    );
  }
}
