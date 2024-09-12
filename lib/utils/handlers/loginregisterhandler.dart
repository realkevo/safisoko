import 'package:flutter/material.dart';
import 'package:safisoko/main.dart';

import '../../pages/login.dart';
import '../../pages/register.dart';


class AuthScreen extends StatefulWidget{
  @override
  _AuthScreenState  createState()
  => _AuthScreenState();
}

  class _AuthScreenState extends State<AuthScreen> {
    bool isLogin = true;

    @override
    Widget build(BuildContext context) {
      return Center(

          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  color: Colors.white,
                  elevation: 10,
                  shadowColor: Colors.black12,
                  margin: EdgeInsets.all(20),
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: Container(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,

                          children: [
                            IndexedStack(
                              index: isLogin ? 1 : 0,
                              children: [

                                RegisterUser(),
                                LoginUser(),
                              ],
                            ),


                            TextButton(onPressed: () {
                              setState(() {
                                isLogin = !isLogin;
                              });
                            },
                              child: Text(isLogin ? "don't have account? register"
                                  : "already have account? login"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
    }

    /*Widget buildLoginForm() {
      return Column(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: 'Phone'
            ),
            obscureText: true,
          )
        ],
      );
    }

    Widget buildRegisterForm() {
      return Column(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: 'phone'
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'password'
            ),
            obscureText: true,
          ),

        ],
      );
    }*/

  }