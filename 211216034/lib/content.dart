import 'package:flutter/material.dart';

class content extends StatelessWidget {
  const content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 25,
                  right: 25,
                  bottom: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 40,
                        )
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.bookmark,
                        size: 40,
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                bottom: 10,
              ),
              child: Row(
                children: [Text('Bedrooms Category')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 10,
              ),
              child: Container(
                  child: Text(
                'Minimalistic Personal Workspace',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 15,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Time Estimated',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          )),
                    ],
                  ),
                  Container(
                    child: Text(
                      'Minumum Space',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Container(
                    child: Text('Estimated Cont',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 15,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('6 Days',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          )),
                    ],
                  ),
                  Container(
                    child: Text('4x4 m2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    child: Text("\$23k - \$30k",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              child: Image.asset(
                "asset/images/bedroom.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
              ),
              child: Row(
                children: [
                  Text(
                    'Developers',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("asset/images/avatar.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'John Wuk',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [Text('Senior Layout Designer')],
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Icon(
                            Icons.messenger_outline,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Icon(
                            Icons.local_phone_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 10,
                ),
                child: Row(children: <Widget>[
                  Expanded(child: Divider()),
                ])),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                bottom: 10,
              ),
              child: Container(
                  child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec libero at sapien venenatis dignissim. Proin et magna sollicitudin, cursus class.',
              )),
            ),
          ],
        ),
      ),
    );
  }
}
