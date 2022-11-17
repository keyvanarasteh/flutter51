import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bank/utils/colors.dart';
import 'package:flutter_app_bank/widgets/custom_text.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),
      child: Container(
        height: 250,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: primaryColor,
          image: DecorationImage(
            image: AssetImage('assets/images/cardbackground.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                ),
                CustomText(
                  text: 'PAY',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: _height / 11,
            ),
            CustomText(
              text: '5291 7832 9098 6161',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Kart Kullanıcı Adı',
                  fontSize: 14,
                  color: Colors.white,
                ),
                CustomText(
                  text: 'Valıd Thru',
                  fontSize: 14,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Yağız Can Çakıroğlu',
                  fontSize: 14,
                  color: Colors.white,
                ),
                CustomText(
                  text: '07/08',
                  fontSize: 14,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
