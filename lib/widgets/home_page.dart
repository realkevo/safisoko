import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return search here
return const Scaffold(
  body: Column(children: <Widget>[
    // todo here enter search bar and categories select option
    //todo below in this columns, we set the grindView for the app product display
    SingleChildScrollView(
      child: Column(children: <Widget>[
        //todo in here call the build product widgets for quality code flow


      ],
      ),
    )
    //todo after the scrollView enter the bottom navigation view

  ],),
);


  }
}