import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget drawLogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Text(
          'LOGIN SCREEN',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

Widget drawButtom() {
  return Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FlatButton(
          onPressed: () {},
          child: RichText(
            text: TextSpan(children: [
              TextSpan(text: 'Dont have an account?',style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(color: Colors.lightBlueAccent))
            ]),
          ))
    ],

  );
}

Widget drawSingIn(context) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          // borderRadius: BorderRadius.only(
          //topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black54),
                  ),
                ]),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Enter email',
                        hintText: 'please enter your email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.lightBlueAccent,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.lightBlueAccent,
                    ),
                    labelText: 'Enter Password',
                    hintText: 'please enter passsword',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    FlatButton(
                      child: Text(
                        'forget password',
                        style: TextStyle(color: Colors.black54),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: RaisedButton(
                          color: Colors.lightBlueAccent,
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {}),
                      height: 1.4 * (MediaQuery.of(context).size.height / 20),
                      width: 5 * (MediaQuery.of(context).size.width / 10),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '-OR-',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(onTap:(){} ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                           // margin: EdgeInsets.only(bottom: 19),
                            child: CircleAvatar(  radius: 100 ,
                              backgroundColor: Colors.lightBlueAccent,
                              child: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    )
  ]);
}
