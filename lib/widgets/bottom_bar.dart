import 'package:flutter/material.dart';
import 'package:safisoko/pages/cart_ui.dart';
import 'package:safisoko/pages/home_screen.dart';
import 'package:safisoko/pages/profile.dart';
import 'package:safisoko/utils/handlers/loginregisterhandler.dart';

class BottomBar  extends StatefulWidget {
  @override
  _BottomBarState  createState() => _BottomBarState();

}

class _BottomBarState extends State<BottomBar>{
  int _currentIndex = 0;
  final List<Widget> _pages= [
    Center(child:  HomeScreen (),),
    Center(child: Profile(),),

    Center(child:  Cart (),),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _pages[_currentIndex],
      
      bottomNavigationBar:

 Container(
   child: BottomNavigationBar (
     currentIndex: _currentIndex,
     onTap: (int index){
                  setState(() {
                    _currentIndex = index;
                  });
                },

                items: const [

                  BottomNavigationBarItem(icon:
                  Center(child:
                  Icon(Icons.account_box,
                    color: Colors.green,
                    size: 29,
                  ),
                  ),
                    label: '',),
                  BottomNavigationBarItem(icon: Center(child:
                  Icon(Icons.home,
                    size: 29,
                    color: Colors.green,
                  )),
                    label: '',),
                  BottomNavigationBarItem(icon:
                  Icon(Icons.shopping_cart,
                    size: 29,

                  color: Colors.green,),

                    label: '',),
                ],

              backgroundColor: Colors.white,


              ),
 ),




    ); }

}