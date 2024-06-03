import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/ItemPage.dart';
import 'package:flutter_application_1/pages/SplashScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/" : (context) => SplashScreen(),
      "/HomePage" : (context) => HomePage(),
      "/itemPage" : (context) => ItemPage(),
     },
   );
 } 
}

