import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safisoko/pages/register.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({Key? key}) : super(key: key);

  @override
  State<LoginUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<LoginUser> {
  Map userData = {};
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 200.0,
                    maxHeight: 170.0,
                  ),

                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(26.0)),
                    shape: BoxShape.rectangle,
                  ),
                  //decoration box here
                  //Todo add image asset here to display the logo
                  child: Image.asset('assets/images/sokobanner.webp'),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'LOGIN USER',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18.0),
                    ),
                    SingleChildScrollView(
                      //this makes the column inside the container scrollable

                      child: Form(
                        key: _formkey,
                        child: Container(
                          height: 150,
                          child: Card(
                            //this is the container holding our fields
                            color: Colors.white38,
                            elevation: 10,
                            shadowColor: Colors.black12,

                            child: Column(
                                //this is the scrollable column holding all the textforms
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  TextFormField(
                                    /*validator: ((value) {
                                                    if (value == null || value.isEmpty){
                                                      return 'please enter some value';
                                                    }
                                                    else if (value.length < 5 ) {
                                                      return 'the length must be greater than 5';
                                                    }
                                                    return null;}),*/
                                    decoration: InputDecoration(
                                        hintText: 'Enter phone or email',
                                        labelText: 'PHONE',
                                        prefixIcon: Icon(
                                          Icons.phone,
                                          color: Colors.green,
                                        ),
                                        errorStyle: TextStyle(fontSize: 18.0),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(9.0)
                                            )
                                        )),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(10),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextFormField(
                                    /*validator: ((value) {
                                                      if (value == null || value.isEmpty){
                                                        return 'please enter some value';
                                                      }
                                                      else if (value.length < 5 ) {
                                                        return 'the length must be greater than 5';
                                                      }
                                                      return null;}),*/
                                    decoration: InputDecoration(
                                        hintText: 'Enter password',
                                        labelText: 'PASSWORD',
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.green,
                                        ),
                                        errorStyle: TextStyle(fontSize: 18.0),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(9.0)))),
                                    obscureText: true,
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        FilledButton(
                            onPressed: () {
                              //todo send user login details here
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.pink,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18.0),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _register() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RegisterUser(),
        ));
  }
}
