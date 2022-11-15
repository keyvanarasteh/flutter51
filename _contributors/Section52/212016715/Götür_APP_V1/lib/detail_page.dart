import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_02/constant.dart';
import 'package:grocery_app_02/models/products.dart';
import 'package:readmore/readmore.dart';

class DetailPage extends StatefulWidget {
  final Product product;
  const DetailPage({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int currentImage = 0;
  int quantity = 1;
  Widget indicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 5,
      margin: const EdgeInsets.all(2),
      width: index == currentImage ? 20 : 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: index == currentImage ? blue : blue.withOpacity(0.5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 90,
        leading: Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.all(2),
          decoration: const BoxDecoration(shape: BoxShape.circle, color: white),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: blue,
              )),
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: white),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_rounded,
                  color: orange,
                )),
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  CarouselSlider.builder(
                      itemCount: widget.product.images.length,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset(
                              'assets/${widget.product.images[index]}',
                              fit: BoxFit.fitWidth,
                            ));
                      },
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentImage = index;
                            });
                          },
                          viewportFraction: 1,
                          aspectRatio: 1)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(widget.product.images.length, (index) {
                        return indicator(index);
                      })
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(30)),
                  color: white,
                  boxShadow: [
                    BoxShadow(
                        color: blue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10)
                  ]),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: grey.shade400),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: orange,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '${widget.product.rate} (2K)',
                            style: poppins.copyWith(
                              color: blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.local_fire_department_rounded,
                            color: darkorange,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '${widget.product.calorie} Cal',
                            style: poppins.copyWith(
                              color: blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.fire_truck_rounded,
                            color: darkorange,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '26.12 Salı',
                            style: poppins.copyWith(
                              color: blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        widget.product.name,
                        style: poppins.copyWith(
                            fontWeight: FontWeight.bold,
                            color: blue,
                            fontSize: 20),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (quantity > 1) {
                                  quantity--;
                                }
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: blue.withOpacity(0.5)),
                              child: Center(
                                child: Text(
                                  '-',
                                  style: poppins.copyWith(
                                      fontSize: 16, color: white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '$quantity kg',
                            style: poppins.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: blue.withOpacity(0.8)),
                          ),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: darkorange),
                              child: Center(
                                child: Text(
                                  '+',
                                  style: poppins.copyWith(
                                      fontSize: 16, color: white),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ReadMoreText(
                        widget.product.description,
                        trimLines: 3,
                        colorClickableText: darkorange,
                        trimCollapsedText: 'Daha Fazla',
                        trimExpandedText: 'Daha Az',
                        moreStyle: poppins.copyWith(color: darkorange),
                        lessStyle: poppins.copyWith(color: darkorange),
                        trimMode: TrimMode.Line,
                        textAlign: TextAlign.justify,
                        style: poppins.copyWith(
                            color: blue.withOpacity(0.8),
                            fontSize: 14,
                            height: 1.8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: poppins.copyWith(
                                fontSize: 14, color: blue.withOpacity(0.6)),
                          ),
                          Text(
                              '\$${(widget.product.price * quantity).toStringAsFixed(2)}',
                              style: poppins.copyWith(
                                  fontSize: 20,
                                  color: blue,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: darkorange),
                            child: Text(
                              'Sepete ekle',
                              style: poppins.copyWith(
                                  fontSize: 16,
                                  color: white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
