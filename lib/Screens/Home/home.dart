import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Jeffrey/jeffData.dart';
import './Jeffrey/jeffItem.dart';
import '../../Shared/shared.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "/";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map stage = {
    "Home": HomeBody(),
    "About": AboutBody(),
    "Jeffrey": JeffreyBody(),
  };
  String selectedStage = "Home";
  void setStage(String stageName) {
    setState(() {
      selectedStage = stageName;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedStage),
      ),
      body: stage[selectedStage],
      bottomNavigationBar: BottomNavBar(setStage),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Text(
            "Welcome dear USER, to Amazon's virtual fulfilment center warehouse. I: Jeffrey, will be your guide on this journey. Let us begin."),
      ),
    );
  }
}

class AboutBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          " CEO, entrepreneur \n Born in 1964 \n Jeffrey \n Jeffrey Bezos \n CEO, entrepreneur\n Born in 1964\nJeffrey \nJeffrey Bezos"),
    );
  }
}

class JeffreyBody extends StatelessWidget {
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
