import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Jeffrey/jeff.dart';
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
  // add any of the jeffrey widgets to this body
  @override
  Widget build(BuildContext context) {
    return Consumer<JeffBrain>(builder: (context, jeffBrain, child) {
      return JeffGrid(jeffBrain: jeffBrain);
    });
  }
}
