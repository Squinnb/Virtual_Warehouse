import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  final Function setStage;

  BottomNavBar(this.setStage);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<String> body = ["Home", "About", "Jeffrey"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedItemColor: Colors.deepPurple[200],
      onTap: (int i) {
        print("in onTap");
        widget.setStage(body[i]);
        selectedIndex = i;
      },
      items: <BottomNavigationBarItem>[
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
