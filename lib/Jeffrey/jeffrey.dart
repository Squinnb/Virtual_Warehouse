import 'package:flutter/material.dart';

class JeffreyBezos extends StatelessWidget {
  const JeffreyBezos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jeffrey, Jeffrey Bezos"),
      ),
      body: Center(
        child: Column(children: [
          Image(
            image: AssetImage('Images/bezos.png'),
            height: 350.0,
            width: 350.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <IconButton>[
              IconButton(
                iconSize: 50,
                onPressed: () {
                  print('frick');
                },
                icon: Icon(
                  Icons.trending_up,
                  color: Colors.lightGreenAccent,
                ),
              ),
              IconButton(
                iconSize: 50,
                onPressed: () {
                  print('frick');
                },
                icon: Icon(
                  Icons.trending_down,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
