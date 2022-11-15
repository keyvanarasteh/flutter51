import 'package:flutter/material.dart';

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  bottom: 5,
                ),
                child: Text('Welcome back,'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: const Text(
                  'PARK Hyung Sik',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  left: 50,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: TextField(
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 238, 200, 142),
                              size: 40,
                            ),
                          ),
                          contentPadding: EdgeInsets.all(30),
                          hintText: "Search bedrooms",
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Container(
                            color: Colors.black,
                            height: 70,
                            width: 65,
                            child: Icon(Icons.filter_alt_outlined,
                                size: 35, color: Colors.white))),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 100,
                              height: 35,
                              child: Center(
                                child: Text(
                                  "All",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              width: 100,
                              height: 35,
                              child: Center(
                                child: Text(
                                  "Bed room",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              width: 100,
                              height: 35,
                              child: Center(
                                child: Text(
                                  "Bathroom",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              width: 100,
                              height: 35,
                              child: Center(
                                child: Text(
                                  "Living room",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              width: 100,
                              height: 35,
                              child: Center(
                                child: Text(
                                  "Kitchen",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              width: 100,
                              height: 35,
                              child: Center(
                                child: Text(
                                  "Children's room",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(
                  left: 50,
                  right: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Image
                      Container(
                        child: Image.asset("asset/images/bedroom.png",
                            fit: BoxFit.cover),
                      ),
                      // Product Name
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Minimalistic Personal Workscape',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                )),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Bedrooms Category',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
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
                          left: 15,
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
                          left: 15,
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
                                      fontSize: 20,
                                    )),
                              ],
                            ),
                            Container(
                              child: Text('4x4 m2',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                            ),
                            Container(
                              child: Text("\$23k - \$30k",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              //list contanier

              // ./list container
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.orange[300]),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.apps_sharp,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
          ]),
    );
  }
}
