import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev/login_screen.dart';
import 'package:odev/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.srcATop),
            child: Image.asset(
              "images/4.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 30),
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Icon(Icons.image, color: Colors.red, size: 40),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Text(
                  "Enjoy the Trip\nwith me",
                  style: TextStyle(
                      fontSize: 35, color: Colors.white, letterSpacing: 1.5),
                ),
              ),
              Spacer(),
              CustomButton(
                onPressed: () {},
                label: "Sign Up",
                btncolor: Colors.deepOrange,
                txtColor: Colors.white,
              ),
              CustomButton(
                onPressed: () {},
                label: "Sign In",
                btncolor: Colors.white,
                txtColor: Colors.deepOrange,
              ),
              SizedBox(height: 80),
            ]),
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final Color btncolor;
  final Color txtColor;
  final Function onPressed;
  CustomButton(
      {required this.label,
      required this.btncolor,
      required this.txtColor,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 45, vertical: 15),
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: btncolor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(
          child: Text(label, style: TextStyle(fontSize: 22, color: txtColor)),
        ),
      ),
    );
  }
}
