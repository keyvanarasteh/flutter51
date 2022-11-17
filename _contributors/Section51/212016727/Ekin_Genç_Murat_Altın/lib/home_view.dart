import 'package:app2/home_two_page.dart';
import 'package:flutter/material.dart';

class home_view extends StatelessWidget {
  const home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //click new page
      bottomNavigationBar: BottomNavigationBar(
          //pagetwo --> sayfa adý
          onTap: (value) {
            if (value == 1)
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Home_Page()));
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.add_chart_outlined,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
              ),
            ),
          ]),
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 330,
                  color: Colors.transparent,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("HELLO EKIN",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900)),
                      Text(
                        "WELCOME BACK !",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.filter_list,
                  size: 37,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kutu(),
                kutu2(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kutu3(),
                kutu4(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class kutu extends StatelessWidget {
  const kutu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color.fromRGBO(192, 222, 220, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.safety_divider_outlined,
              size: 30,
            ),
            Text(
              "230k",
              style: TextStyle(fontSize: 25),
            ),
            Text("Sales"),
          ],
        ),
        height: 180,
        width: 150,
        // color: Color.fromARGB(255, 214, 4, 4),
      ),
    );
  }
}

class kutu2 extends StatelessWidget {
  const kutu2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color.fromARGB(230, 238, 200, 229),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle_outlined,
              size: 30,
            ),
            Text(
              "8.549k",
              style: TextStyle(fontSize: 25),
            ),
            Text("customers"),
          ],
        ),
        height: 210,
        width: 150,
      ),
    );
  }
}

class kutu3 extends StatelessWidget {
  const kutu3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color.fromRGBO(241, 238, 233, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.auto_awesome_mosaic_rounded,
              size: 30,
            ),
            Text(
              "1423k",
              style: TextStyle(fontSize: 25),
            ),
            Text("products"),
          ],
        ),
        height: 210,
        width: 150,
      ),
    );
  }
}

class kutu4 extends StatelessWidget {
  const kutu4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color.fromRGBO(241, 223, 223, 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.data_saver_off_outlined,
              size: 30,
            ),
            Text(
              "9745",
              style: TextStyle(fontSize: 25),
            ),
            Text("revenue"),
          ],
        ),
        height: 180,
        width: 150,
      ),
    );
  }
}
