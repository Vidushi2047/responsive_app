import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.text, required this.icon, required this.onpress})
      : super(key: key);
  final String text;
  final IconData icon;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onpress,
      horizontalTitleGap: 10.0,
      leading: Icon(icon),
      title: Text(text),
    );
  }
}
