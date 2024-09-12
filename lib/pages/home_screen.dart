import 'package:flutter/material.dart';
import 'package:safisoko/utils/handlers/loginregisterhandler.dart';
import 'package:safisoko/widgets/card.dart';

import '../widgets/categories.dart';
import '../widgets/home_page.dart';
class HomeScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        shadowColor: Colors.cyanAccent,
        bottomOpacity: 40.0,
        backgroundColor: Colors.white,

        toolbarHeight: 40,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Search..',

                hintStyle: TextStyle(

                    color: Colors.black),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search_sharp,
                  color: Colors.black,
                ),

              ),
              style: TextStyle(color: Colors.black,),
            ),
          ),
        ),


      ),
     /* AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back),
          onPressed: () {}
          ,),
        actions: <Widget>[IconButton(onPressed: () {},
            icon: const Icon(Icons.search_sharp)),
        ],
      ),*/
      body:
      Products (),



      //todo create widgets and call them as methods here
    );

  }

}



class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();

}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Padding(
  padding: const EdgeInsets.only(bottom: 0, top: 2,),
  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 0.001,
    mainAxisSpacing: 0.2,
    childAspectRatio: 1.0,
  ), itemBuilder: (BuildContext context,
      int index) {
    return
     Container(
       decoration: BoxDecoration(
         color: Colors.white,
       ),

         child: Card(
          elevation: 2,
          color: Colors.pink ,
             ),

     );
  },),
);



  }
  //todo here define methods associated to products

}





