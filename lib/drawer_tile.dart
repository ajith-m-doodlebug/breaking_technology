import 'package:flutter/material.dart';

class DrawerTile extends StatefulWidget {
  const DrawerTile({this.icon, this.title, this.onTap});
  final IconData icon;
  final String title;
  final void Function() onTap;
  @override
  _DrawerTileState createState() => _DrawerTileState();
}

class _DrawerTileState extends State<DrawerTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        widget.icon,
        color: Colors.blue,
      ),
      title: Text(
        widget.title,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontFamily: 'TitleFont',
        ),
      ),
      onTap: widget.onTap,
    );
  }
}
