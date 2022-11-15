import 'package:flutter/material.dart';

import 'main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3), BlendMode.srcATop),
          child: Image.asset(
            "images/2.jpg",
            fit: BoxFit.cover,
          ),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 30, right: 30),
                      child: Row(
                        children: [
                          Text("New\nAccount",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                child: Center(
                                  child: Icon(Icons.camera_alt_outlined),
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.deepOrange, width: 0.5)),
                              ),
                              SizedBox(height: 10),
                              Text("upload Picture")
                            ],
                          )
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 1),
                    child: Text("Email"),
                  ),
                  CustomTextField(
                    prefixIcon: Icons.email,
                    label: "ornekmail@gmail.com",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 5),
                    child: Text("Username"),
                  ),
                  CustomTextField(
                    prefixIcon: Icons.person,
                    label: "Ornek Username",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 5),
                    child: Text("Password"),
                  ),
                  CustomTextField(
                    prefixIcon: Icons.lock,
                    label: "**********",
                  ),
                  CustomButton(
                    onPressed: () {},
                    label: "Sign Up",
                    btncolor: Colors.deepOrange,
                    txtColor: Colors.white,
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
            ))
          ],
        ))
      ]),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  CustomTextField({required this.label, required this.prefixIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(prefixIcon, size: 20),
                SizedBox(width: 10),
                Text(label),
              ],
            ),
            SizedBox(height: 05),
            Container(
              height: 3,
              width: double.infinity,
              color: Colors.deepOrange.withOpacity(0.5),
            )
          ],
        ));
  }
}
