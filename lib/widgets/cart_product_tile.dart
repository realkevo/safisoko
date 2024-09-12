import 'package:flutter/material.dart';

class CartProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2)),
          /* BorderRadius.only(bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),),*/

          color: Colors.pink,
          shape: BoxShape.rectangle,
        ),
        child:
//product column widget
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Row(


                  children: [
                    //todo add checkbox here
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0,),
                          child: CheckBox(),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Container(width: 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),),
                    ),

                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 2.0,
                          ),
                          child: Text("PRODUCT"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0,
                            bottom: 0.0,
                              ),
                          child: Container(
                            height: 97,
                            width: 105,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(9.0)


                            )
                            ),
                            child: Image.asset(
                              'assets/images/pic.jpg',

                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "QUANTITY",
                        overflow: TextOverflow.ellipsis,
                      ),
                      //row of icon buttons to add or reduce quantity
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: _reduceProductQuantiy,
                                icon: Icon(Icons.remove_circle_outline)),
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                              child: Center(child: Text("20")),
                            ),
                            IconButton(
                                onPressed: _ongezaProductQuantiy,
                                icon: Icon(Icons.add_outlined)),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          "store name",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: Column(
                  children: [
                    Text(
                      "PRICE",
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                        right: 4,
                      ),
                      child: Column(
                        children: [
                          Text("Ksh: 1200"),
                          SizedBox(
                            height: 14,
                          ),
                          IconButton(
                              onPressed: _ongezaProductQuantiy,
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _reduceProductQuantiy() {
    //todo reduce th product quantity in cart button
  }

  void _ongezaProductQuantiy() {
    //todo ongeza the product quantity in cart button
  }

}

//todo cart product check button wire logic
//only when item is checked total is added

class CheckBox extends StatefulWidget{
  @override
  _CheckBoxState createState() => _CheckBoxState();

}
class _CheckBoxState extends State<CheckBox>{
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return GestureDetector(
  onTap: (){
    setState(() {
      isChecked = !isChecked;

    });
  },
  child: Container(
    height: 24,
    width: 19,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isChecked ? Colors.green : Colors.white,
      /*border: Border.all(
        width: 2.0,


      ),*/
    ),
    child: Center(
      child: isChecked ? Icon(Icons.check_rounded,
      color: Colors.white,
      size: 20,
      )
          : null,
    ),
  ),
);
  }

}