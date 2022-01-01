import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class JeffData extends ChangeNotifier {
  List<Jeff> jeffs = [
    Jeff(name: 'Jeff Zero', id: 0, color: Colors.grey),
    Jeff(name: 'Jeff One', id: 1, color: Colors.black12),
    Jeff(name: 'Jeff Two', id: 2, color: Colors.black26),
    Jeff(name: 'Jeff Three', id: 3, color: Colors.black38),
    Jeff(name: 'Jeff Four', id: 4, color: Colors.black45),
    Jeff(name: 'Jeff Five', id: 5, color: Colors.black54),
  ];

  int jeffreyPoints = 0;

  void increasePoints() {
    jeffreyPoints++;
    notifyListeners();
  }

  void decreasePoints() {
    jeffreyPoints--;
    notifyListeners();
  }

  void shuffleJeffs() {
    print("I am shuffling the jeffs...");
    jeffs.shuffle();
    notifyListeners();
  }
}

class Jeff {
  int id;
  String name = "Jeff ...";
  Color color;
  Jeff({required this.id, required this.name, required this.color});
}
