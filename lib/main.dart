import 'package:christmas/theme.dart';
import 'package:flutter/material.dart';
import 'package:christmas/routes.dart';
import 'Jeffrey/jeffData.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JeffData(),
      child: MaterialApp(
        routes: appRoutes,
        title: 'Flutter Man',
        theme: appTheme,
      ),
    );
  }
}
