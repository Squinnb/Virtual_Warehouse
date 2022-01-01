import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'jeffData.dart';
import './jeffItem.dart';

class JeffreyBezos extends StatelessWidget {
  const JeffreyBezos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jeffrey, Jeffrey Bezos"),
      ),
      body: Container(
        child: Consumer<JeffData>(builder: (context, jeffData, child) {
          return Column(
            children: [
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                primary: false,
                padding: EdgeInsets.all(10.0),
                children: jeffData.jeffs.map((Jeff jb) {
                  return JeffItem(jb);
                }).toList(),
              ),
              Center(
                child: ElevatedButton(
                  child: Text("Shuffle Jeffs"),
                  onPressed: () {
                    jeffData.shuffleJeffs();
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
