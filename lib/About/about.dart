import 'package:flutter/material.dart';
import '../Shared/shared.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
        child: Text(
            " CEO, entrepreneur \n Born in 1964 \n Jeffrey \n Jeffrey Bezos \n CEO, entrepreneur\n Born in 1964\nJeffrey \nJeffrey Bezos"),
      ),
    );
  }
}
