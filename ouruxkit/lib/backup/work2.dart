// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AvatarWidget(),
                  AvatarWidget(),
                  AvatarWidget(),
                  AvatarWidget(),
                  AvatarWidget(),
                  AvatarWidget(),
                  AvatarWidget(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AvatarWidget(),
                    Column(
                      children: [
                        Text('Keyvan Arasteh'),
                        Text('London'),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                  size: 64,
                  color: Colors.black,
                ),
              ],
            ),
            ProfileWidget(),
            ProfileWidget(),
            ProfileWidget(),
            ProfileWidget(),
            ProfileWidget(),
            ProfileWidget(),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.ac_unit_outlined,
              size: 64,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Hello Flutter!'),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.share,
              size: 64,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 228, 228, 228),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(67, 0, 0, 0),
              blurRadius: 5,
              spreadRadius: 0.5,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AvatarWidget(),
              SizedBox(
                width: 20,
              ),
              Text('Keyvan Arasteh')
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 128,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.9),
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        border: Border.all(
          color: Colors.black,
          width: 7,
        ),
        //borderRadius: BorderRadius.all(Radius.circular(35)),
        // borderRadius: BorderRadius.only(
        //   topRight: Radius.circular(35),
        //   bottomLeft: Radius.circular(35),
        // ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg3.jpg"),
        ),
      ),
    );
  }
}

// Container(child:...)
// Center(child:...)
// Text('Yazi')
// Image.network('address')
// Image.assets('address')
// Icon(Icons.queue_rounded)

// Row(children:[])
// Column(children:[])
