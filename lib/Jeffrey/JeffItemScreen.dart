import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'jeff_data.dart';

class JeffItemScreen extends StatelessWidget {
  final Jeff jeff;
  JeffItemScreen({Key? key, required this.jeff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    JeffBrain jeffData = Provider.of<JeffBrain>(context);
    print(jeff.color);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Hero(
            tag: jeff.id,
            child: Image.asset(
              'Images/bezos.png',
              width: 100,
            ),
          ),
          Center(
            child: Text(
              'Jeffrey Points: ${jeffData.jeffreyPoints}',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'FiraSans',
                fontSize: 25.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: IconButton(
                  iconSize: 50,
                  onPressed: () {
                    print('Jeff Points going up');
                    jeffData.increasePoints();
                  },
                  icon: Icon(
                    Icons.trending_up,
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: IconButton(
                  iconSize: 50,
                  onPressed: () {
                    print('There goes my Jeff Points...');
                    jeffData.decreasePoints();
                  },
                  icon: Icon(
                    Icons.trending_down,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: jeff.color,
    );
  }
}
