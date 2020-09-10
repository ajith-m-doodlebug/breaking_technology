import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  static String id = 'terms_conditions';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Text(
          'Terms and Conditions',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView(
            children: [
              TAndTile(
                title: 'Ownership: ',
                contents: 'This application is made by \'The DooDle Bug\' and '
                    'all the Rights, design, logo, the name \'Breaking Technology\' belongs to the same.',
              ),
              TAndTile(
                title: 'General: ',
                contents:
                    'This Application contains Information in the form of News, Reviews. '
                    'All the contents in any form belongs to \'Breaking Technology\' only .'
                    'The user can only read the Information provided by the same. '
                    'Misuse of contents or using them in any other platform is strictly prohibited for the user. ',
              ),
              TAndTile(
                title: 'No User Generated Content: ',
                contents:
                    'There is no user generated content in this application. '
                    'The user has NO Rights to moderate, change, use it in any other place.',
              ),
              TAndTile(
                title: 'Terms and Conditions Update: ',
                contents:
                    'The \'Breaking Technology\' will be updating the Terms and Conditions regularly.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TAndTile extends StatelessWidget {
  TAndTile({this.title, this.contents});
  final String title;
  final String contents;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 25),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            contents,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
