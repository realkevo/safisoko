import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 97,
              width: 105,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(9.0))),
              child: Image.asset(
                'assets/images/pic.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text("edit"),
            Row(
              children: <Widget>[
                Text("usrname"),
                Text("edit"),
              ],
            ),
            Row(
              children: <Widget>[
                Text("email"),
                Text("edit"),
              ],
            ),
            Row(
              children: <Widget>[
                Text("phone"),
                Text("edit"),
              ],
            ),
            Row(
              children: <Widget>[
                Text("password"),
                Text("reset"),
              ],
            ),
            Row(
              children: <Widget>[
                Text("LOGOUT"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
