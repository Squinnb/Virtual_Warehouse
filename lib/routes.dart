import 'package:christmas/About/about.dart';
import 'package:christmas/Home/home.dart';
import 'package:christmas/Jeffrey/jeffrey.dart';

var appRoutes = {
  '/': (context) => HomeScreen(),
  '/about': (context) => AboutScreen(),
  '/jeffrey': (context) => JeffreyBezos(),
};
