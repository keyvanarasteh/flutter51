import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading:
            Icon(Icons.align_vertical_center_outlined, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1),
                color: Colors.transparent,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-wuRw_DYDmzU0jD35ikKtU3-I-_Fub9Q7-YkxwenSvg&s",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //üst taraf
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(249, 245, 242, 1),
                    ),
                    width: 600,
                    height: 350,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    "4,732,42",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("global avg.")
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    "80.3M",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  Text("Market cap")
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    "1.73M",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                  Text("Volume")
                                ],
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          flex: 2,
                          child: Image.network(
                              'https://static.vecteezy.com/system/resources/thumbnails/011/887/863/small/line-art-striped-graphic-template-abstract-black-wave-design-element-free-png.png'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: Text("1D")),
                              Expanded(child: Text("1W")),
                              Expanded(child: Text("1M")),
                              Expanded(child: Text("3M")),
                              Expanded(child: Text("6M")),
                              Expanded(child: Text("9M")),
                              Expanded(child: Text("1Y")),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                'Sales Revenue',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              //Sales Revenue
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue[100],
                          ),
                          child: Icon(Icons.scale_sharp)),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Sales',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Since last week'),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(
                        '230k',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Customers
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue[100],
                          ),
                          child: Icon(Icons.account_box_rounded)),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Customers',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Since last week'),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(
                        '8.543k',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Products
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue[100],
                          ),
                          child: Icon(Icons.layers_outlined)),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Products',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Since last week'),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(
                        '1.423k',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Revenue
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue[100],
                          ),
                          child: Icon(Icons.accessibility_outlined)),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Revenue',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Since last week'),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(
                        '\$9745',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
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
}
