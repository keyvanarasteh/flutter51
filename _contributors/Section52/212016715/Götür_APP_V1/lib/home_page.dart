import 'package:flutter/material.dart';
import 'package:grocery_app_02/constant.dart';
import 'package:grocery_app_02/detail_page.dart';
import 'package:grocery_app_02/models/categories.dart';
import 'package:grocery_app_02/models/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentCategory = 'Meyveler';
  int currentMenu = 0;
  List<Product> dataProduct =
      products.where((element) => element.category == 'Meyveler').toList();
  List<IconData> menus = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.notifications,
    Icons.person
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 130,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.bubble_chart_rounded,
                color: blue,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'GÖTÜR',
                    style: poppins.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: darkorange)),
                TextSpan(
                    text: '',
                    style: poppins.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: blue)),
              ])),
            ],
          ),
        ),
        actions: [
          Container(
              padding: const EdgeInsets.all(2),
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: white),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_basket_rounded,
                    color: darkorange,
                  ))),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: white),
              child: TextField(
                autofocus: false,
                onChanged: (value) {
                  setState(() {
                    value != ''
                        ? dataProduct = products
                            .where((element) => element.name
                                .toLowerCase()
                                .contains(value.toLowerCase()))
                            .toList()
                        : dataProduct = products
                            .where((element) =>
                                element.category == currentCategory)
                            .toList();
                  });
                },
                decoration: InputDecoration(
                    hintText: 'Ürün ara ve satın almak istiyorum',
                    hintStyle: poppins.copyWith(fontSize: 14, color: blue),
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: blue,
                    ),
                    suffixIcon: const Icon(
                      Icons.tune_rounded,
                      color: blue,
                    ),
                    border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: categories
                  .map((e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentCategory = e;
                            dataProduct = products
                                .where((element) => element.category == e)
                                .toList();
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(microseconds: 200),
                          height: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              currentCategory == e
                                  ? Text(
                                      e,
                                      style: poppins.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: blue),
                                    )
                                  : Text(
                                      e,
                                      style: poppins.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          color: blue.withOpacity(0.7)),
                                    ),
                              currentCategory == e
                                  ? Container(
                                      height: 5,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: darkorange,
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: dataProduct.isNotEmpty
                ? SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Wrap(
                      runSpacing: 20,
                      spacing: 20,
                      children: dataProduct
                          .map((e) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailPage(product: e)));
                                },
                                child: ItemProduct(
                                  product: e,
                                ),
                              ))
                          .toList(),
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_cart_outlined,
                          size: 120,
                          color: darkorange,
                        ),
                        Text(
                          'Ürün Boş',
                          style:
                              poppins.copyWith(fontSize: 18, color: darkorange),
                        )
                      ],
                    ),
                  ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: blue.withOpacity(0.4), blurRadius: 10, spreadRadius: 5)
            ],
            color: white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              menus.length,
              (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentMenu = index;
                      });
                    },
                    child: Icon(
                      menus[index],
                      color: currentMenu == index ? orange : grey,
                    ),
                  )),
        ),
      ),
    );
  }
}

class ItemProduct extends StatelessWidget {
  final Product product;
  const ItemProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 2 - 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: white),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/${product.images[0]}',
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                product.name,
                style: poppins.copyWith(
                    color: blue, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                '${product.calorie} Cal',
                style: poppins.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: blue.withOpacity(0.7)),
              ),
              Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '\$${product.price}',
                        style: poppins.copyWith(
                          color: orange,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: ' /kg',
                        style: poppins.copyWith(
                            color: blue, fontWeight: FontWeight.bold))
                  ])),
                  const Spacer(),
                  Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: darkorange),
                      child: const Icon(
                        Icons.add,
                        color: white,
                        size: 16,
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
