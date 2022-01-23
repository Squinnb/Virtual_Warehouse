import 'Home/home.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  HomeScreen.id: (context) => HomeScreen(),
};
