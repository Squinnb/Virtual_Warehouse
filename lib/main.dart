import 'Screens/Home/home.dart';
import 'package:virtualWarehouse/theme.dart';
import 'package:flutter/material.dart';
import 'package:virtualWarehouse/routes.dart';
import 'Screens/Home/Jeffrey/jeffData.dart';
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
