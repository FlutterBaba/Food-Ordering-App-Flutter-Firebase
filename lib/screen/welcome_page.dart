import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  Widget button({
    @required String name,
    Color color,
    Color textColor
  }) {
    return Container(
      height: 45,
      width: 300,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.green,width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset('images/logo.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Welcome To Tastee",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Column(
                    children: [
                      Text("Order food form our restaueant and"),
                      Text("Make reservation in real- time")
                    ],
                  ),
                  button(name: 'Login', color: Colors.green,textColor: Colors.white),
                  button(name: 'SignUp', color: Colors.white,textColor: Colors.green),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
