import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'main.dart';

class SignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.srcATop),
            child: Image.asset("images/4.jpg", fit: BoxFit.cover),
          ),
          SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35))),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 30, right: 30),
                      child: Row(
                        children: [
                          Text("Welcome back\nSafa",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("images/4.jpg"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      prefixIcon: Icons.lock,
                      label: "**************",
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(
                          "Forget Password ?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    CustomButton(
                      onPressed: () {},
                      label: "Sign Up",
                      btncolor: Colors.deepOrange,
                      txtColor: Colors.white,
                    ),
                    SizedBox(height: 14),
                    Center(
                      child: Text(
                        "or Sign In with",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      height: 100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage("images/gmail.png"),
                            ),
                            SizedBox(width: 30),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage("images/face.png"),
                            ),
                            SizedBox(width: 30),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage("images/tww.png"),
                            ),
                          ]),
                    )
                  ],
                ),
              )),
            ],
          ))
        ],
      ),
    );
  }
}
