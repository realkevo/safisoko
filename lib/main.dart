import 'package:flutter/material.dart';
import 'package:safisoko/pages/home_screen.dart';
import 'package:safisoko/pages/register.dart';
import 'package:safisoko/widgets/bottom_bar.dart';
import 'package:safisoko/widgets/card.dart';
import 'package:safisoko/utils/handlers/loginregisterhandler.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,  this.title});
  final title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightGreen[800],
        fontFamily: 'Georgia',

      ),

    home: BottomBar(),

    );
  }
}


