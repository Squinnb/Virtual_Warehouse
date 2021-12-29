import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.deepPurple[200],
      onTap: (int i) {
        print("This is i: $i");
        switch (i) {
          case 0:
            break;
          case 1:
            Navigator.pushNamed(context, "/about");
            break;
          case 2:
            Navigator.pushNamed(context, "/jeffrey");
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.home,
            size: 20,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.brain,
            size: 20,
          ),
          label: "About",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.amazon,
            size: 20,
          ),
          label: "Jeffery Bezos",
        ),
      ],
    );
  }
}
