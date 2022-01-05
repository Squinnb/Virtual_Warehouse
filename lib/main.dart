import 'Screens/Home/home.dart';
import 'theme.dart';
import 'routes.dart';
import 'package:flutter/material.dart';
import 'Screens/Home/Jeffrey/jeff_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JeffBrain(),
      child: MaterialApp(
        title: 'Flutter Man',
        theme: appTheme,
        initialRoute: HomeScreen.id,
        routes: appRoutes,
      ),
    );
  }
}
