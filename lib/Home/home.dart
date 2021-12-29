import 'package:flutter/material.dart';
import '../Shared/shared.dart';

class HomeScreen extends StatelessWidget {
  // HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Text(
              "Welcome dear USER, to Amazon's virtual fulfilment center warehouse. I: Jeffrey, will be your guide on this journey. Let us begin."),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
