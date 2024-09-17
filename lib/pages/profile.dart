/*import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:safisoko/pages/profile_settings.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        shadowColor: Colors.cyan,
        bottomOpacity: 40.0,
        backgroundColor: Colors.white,
        toolbarHeight: 40,
        title: const Center(
            child: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        )),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
          ),

          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    right: 3,
                    left: 3,
                  ),
                  child: Container(
                    width: double.infinity,

                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      /* BorderRadius.only(bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),),*/

                      color: Colors.pink,
                      shape: BoxShape.rectangle,
                    ),

                    //decoration box here
                    child: const Center(
                      child: Text(
                        "EDIT PROFILE",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                      right: 3,
                      left: 3,
                    ),
                    child: Container(
                      height: 190,
                      width: double.infinity,

                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        /* BorderRadius.only(bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),),*/

                        color: Colors.pink,
                        shape: BoxShape.rectangle,
                      ),

                      //decoration box here
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          //todo show logged in user here in this text widget
                           Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 15.0,
                                left: 45,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "KELVIN THURANIRA",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),

                                  //todo change this to
                                  IconButton(
                                    onPressed: (){
                                      ProfileSettings()

                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                          ProfileSettings()),
                                      );
                                   /*   _opensettings(context);*/

                                    },



                                    icon: Icon(
                                      Icons.settings,
                                      size: 38,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 2),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //profile picture here
                                ClipOval(
                                  child: Image.asset(
                                    'assets/images/pic.jpg',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 13.0,
                                  ),
                                  child: Text(
                                    "Wallet Balance: Ksh 768,430.78",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,

                                    ),

                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    children: [
                                      SizedBox(
                                        child: IconButton(
                                          onPressed: _wishlist,
                                          icon: Image.asset(
                                            'assets/icons/wishlist.jpg',
                                          ),
                                          color: Colors.green,
                                        ),
                                        height: 35,
                                      ),
                                      const Text(
                                        "Wishlist",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    children: [
                                      SizedBox(
                                        child: IconButton(
                                          onPressed: _wishlist,
                                          icon: Icon(Icons.history_sharp),
                                          color: Colors.white,
                                        ),
                                        height: 35,
                                      ),
                                      Text(
                                        "Order history",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                    right: 3,
                    left: 3,
                  ),
                  child: Container(
                    width: double.infinity,

                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      /* BorderRadius.only(bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),),*/

                      color: Colors.pink,
                      shape: BoxShape.rectangle,
                    ),

                    //decoration box here
                    child: const Center(
                      child: Text(
                        "MANAGE ORDERS",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                    right: 3,
                    left: 3,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 190,

                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      /* BorderRadius.only(bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),),*/

                      color: Colors.pink,
                      shape: BoxShape.rectangle,
                    ),

                    //decoration box here
                    child: const Center(
                      child: Text(
                        "SHOW ORDER STATUS HERE",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                    right: 3,
                    left: 3,
                  ),
                  child: Container(
                    height: 190,
                    width: double.infinity,

                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      /* BorderRadius.only(bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),),*/

                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    ),

                    //decoration box here
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            //todo show logged in user here in this text widget

                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Terms and conditions",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "About Us",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 38.0),
                              child: FilledButton(
                                  onPressed: () {
                                    //todo send user login details here
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.pink,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: const Text(
                                    "LOGOUT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18.0),
                                  )),
                            ),
                            const SizedBox(
                              height: 5,
                            ),

                            const Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Contact Developer: 0758536280",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )

                /* Column(
                 mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment:
                 MainAxisAlignment.start,
                 crossAxisAlignment:
                 CrossAxisAlignment.center,
                 children: <Widget>[
                   SizedBox(height: 30,),
                   Text(" Phone number "),
                   SizedBox(height: 30,),

                   Text(" Email "),
                   SizedBox(height: 30,),

                   Text(" Register Seller?"),
                   SizedBox(height: 30,),

                   Text(" Update profile"),
                   SizedBox(height: 30,),

                   TextButton(onPressed: (){}, child:
                   Text("Logout"))




                 ],
               ),*/
              ],
            ),
          ),

          //Mother container

          //todo implement the user details here
        ),
      ),
    );
  }

  void _logoutUser() {

  }

}

_wishlist() {
  //todo open wishlist with this function
}
//this function should open settings screen when its called
//after settings iconButton above is clicked
Drawer _settings(BuildContext context) {
  return Drawer(
    child: ProfileSettings(),
  );


  //todo in here call navigator to user profile settings page
}*/
