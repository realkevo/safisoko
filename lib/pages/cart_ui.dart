import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safisoko/widgets/cart_product_tile.dart';
import 'package:safisoko/widgets/genesis.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();

}
//todo add checked button in cart product
class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(
          appBar: AppBar(
            elevation: 6,
            shadowColor: Colors.cyan,
            bottomOpacity: 40.0,
            backgroundColor: Colors.white,

            toolbarHeight: 40,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Shopping Cart',

                    hintStyle: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,),
                    border: InputBorder.none,


                  ),
                  style: TextStyle(color: Colors.black,),
                ),
              ),
            ),


          ),
          body:
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,

            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Container(
                    height: 500,
                    decoration: const BoxDecoration(

                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(

                          5.0), bottomLeft: Radius.circular(5.0),),
                      /* BorderRadius.only(bottomLeft: Radius.circular(5.0),
                                      bottomRight: Radius.circular(5.0),),*/

                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    ),
                    child:
                    ListView.builder(
                        itemCount: 10000,
                        itemBuilder: (context, index)
                        {
                          return
                            CartProductTile();


                        }
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only( top: 3, left: 5.0, right: 5.0),

                  child: Column(
                    children: [
                      Container (
                        decoration: const BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(2)),
                          /* BorderRadius.only(bottomLeft: Radius.circular(5.0),
                                              bottomRight: Radius.circular(5.0),),*/

                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),


                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 25.0,
                          ),

                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Shipping fee:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),),

                                  Text("ksh 200",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                    ),),
                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("VAT:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),),
                                  Text("ksh 0",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                    ),),
                                ],
                              ),
                              Container(height: 3,
                                color: Colors.orange,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("TOTAL:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),),


                                  Text("ksh 36045.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),),

                                ],
                              ),

                            ],
                          ),

                        ),
                      ),
                      FilledButton(
                          onPressed: () {
                            //todo send order created for payment
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            "PROCEED CHECKOUT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 12.0),
                          )),

                    ],
                  ),

                ),

              ],
            ),

          ),

        //todo replace this SingleChildScrollVew wiht ListVIew builder


      );
  }
//todo here define methods associated to products
}



