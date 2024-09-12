import 'package:flutter/material.dart';

class Categoryz extends StatefulWidget {
  @override
  _CategoryzState
  createState() => _CategoryzState();
}

class _CategoryzState extends State<Categoryz> {
  List<String> categories = ["kitchenware", "livingroom", "beddings", "electronics", "toiletaries"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context){
    return SizedBox(height: 25,
      child:  ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index){
    return
      GestureDetector(
        onTap: (){
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 2.2),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(categories[index],style: TextStyle(fontWeight:
            FontWeight.bold,
              color: selectedIndex == index ? Colors.black :
              Colors.transparent,
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),),
      );
  }
}