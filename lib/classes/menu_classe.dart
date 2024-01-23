import 'package:flutter/material.dart';

typedef SectionCallback = void Function(int);

class Menu extends StatelessWidget {
  final SectionCallback SectionClick;
  // ignore: use_key_in_widget_constructors
  const Menu(this.SectionClick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          TextButton(
              onPressed: () {
                SectionClick(0);// Home
              },
              child: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {
                SectionClick(1); //About
              },
              child: const Text(
                'About',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {
                SectionClick(2); //Skills
              },
              child: const Text(
                'Skills',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {
                SectionClick(3); //Portifolio/habilidades
              },
              child: const Text(
                'Projects',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {
                SectionClick(4); //Contacts
              },
              child: const Text(
                'Contacts',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
