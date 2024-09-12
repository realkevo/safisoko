import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CustomCardView extends StatelessWidget{
  const CustomCardView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return



 /* Container(
    height: 200,
            width: 200,
            alignment: Alignment.center,

            decoration: BoxDecoration(color:
            Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0,3),
                )
              ],              
            ),
          child:*/
    Center(


                    child: Container(
                      height: 200,
                      width: 242,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(12),
                        topRight: Radius.circular(12),
                            topLeft: Radius.circular(12),

                            bottomLeft: Radius.circular(12))
                      ),


                        child: Column(
                          children: [
                            Container(
                        height:140,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Colors.white70,
                                  ),
                              child: Image.asset("assets/images/padlock"),
                            ),

                               Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                                      
                                                      
                                  Text("name h ere"),
                                  Text("price here"),
                                  Text("description here"),
                                                      
                                ],
                              ),
                          ],
                        ),



                    ),






          /*child: Card(
            //todo make this card transparent

            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            margin: EdgeInsets.all(15.0),
            shadowColor: Colors.white12,
            color: Colors.blue,
              child:
              ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index){
              return Padding(padding: EdgeInsets.all(8.0),


                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                                 Text("Name:"),

                                Text("Price:"),

                                Text("Description:"),
                             ],
                  ),
                ),
              );
              }




            ),

             ),*/
               );

  }

}