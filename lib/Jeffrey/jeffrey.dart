import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'jeffData.dart';
import './jeffItem.dart';
import '../Shared/shared.dart';

class JeffreyScreen extends StatelessWidget {
  static const String id = "/jeffrey";
  const JeffreyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jeffrey, Jeffrey Bezos"),
        automaticallyImplyLeading: false,
      ),
      body: Jeffrey(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Jeffrey extends StatelessWidget {
  const Jeffrey({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<JeffBrain>(builder: (context, jeffData, child) {
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
    );
  }
}
