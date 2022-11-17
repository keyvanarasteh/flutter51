import 'package:flutter/material.dart';

class ikincisayfa extends StatelessWidget {
  const ikincisayfa({super.key});

  @override
  Widget build(BuildContext context) {
    var orange = Colors.orange;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            " Men's Shoes",
            style: TextStyle(color: Colors.orange, fontSize: 25),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left_outlined,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ), //AppBar
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Image.asset(
                    "asset/images/shoes2.jpg",
                    width: 250,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      width: 35,
                      height: 35,
                      color: Colors.orange,
                      child: const Icon(
                        Icons.code,
                        size: 30,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 15,
                        ),
                        child: Row(
                          children: const [
                            Text(
                              'Nike Air Max Pre-Day',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber[600],
                                ),
                                const Text(
                                  '5.0',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Text('(1120 Rewievs)')
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              child: const Text(
                                  'Taking the classic look of heritage nike running into a new realm, the nike air max pre-day bring'))),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 15,
                        ),
                        child: Row(
                          children: const [
                            Text(
                              'Select Color:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 20, bottom: 20),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "asset/images/select1.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 20, bottom: 20),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "asset/images/creat.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "asset/images/select3.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              )
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Size:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [],
                            ),
                            Container(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'EU',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('US'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('UK'),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Container(
                          height: 75,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(
                                        left: 5, right: 10),
                                    width: 50,
                                    height: 50,
                                    child: const Center(
                                      child: Text(
                                        '40',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(
                                        left: 5, right: 10),
                                    width: 50,
                                    height: 50,
                                    child: const Center(
                                      child: Text(
                                        '41',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(
                                        left: 5, right: 10),
                                    width: 50,
                                    height: 50,
                                    child: const Center(
                                      child: Text(
                                        '42',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.orange[600],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(
                                      right: 10,
                                      left: 5,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: const Center(
                                      child: Text(
                                        '43',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(
                                      right: 10,
                                      left: 5,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: const Center(
                                      child: Text(
                                        '44',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(
                                      right: 10,
                                      left: 5,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: const Center(
                                      child: Text(
                                        '45',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(
                                      right: 10,
                                      left: 5,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: const Center(
                                      child: Text(
                                        '46',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 71,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Text(
                                        "Price",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.monetization_on),
                                    Padding(
                                      padding: EdgeInsets.only(top: 2.0),
                                      child: Text("137,50",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20.0, top: 11),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.orange[800],
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20))),
                                    child:
                                        const Center(child: Text("Add to Bag")),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
