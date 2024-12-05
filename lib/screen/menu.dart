import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("function"),
      ),
      body: CircularMenu(items: [
        CircularMenuItem(
          color: Colors.amber,
          onTap: () {},
        ),
        CircularMenuItem(
          icon: Icons.bookmark,
          color: Colors.blue,
          onTap: () {},
        ),
        CircularMenuItem(
          color: Colors.lime,
          onTap: () {},
        ),
        CircularMenuItem(
          icon: Icons.messenger,
          color: Colors.teal,
          onTap: () {},
        ),
        CircularMenuItem(
          icon: Icons.search,
          onTap: () {},
        )
      ]),
    );
  }
}
