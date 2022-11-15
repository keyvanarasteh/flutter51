import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bank/utils/colors.dart';
import 'package:flutter_app_bank/widgets/custom_text.dart';

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Container(
        padding: const EdgeInsetsDirectional.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.withOpacity(.3),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.account_balance,
                size: 40,
                color: primaryColor,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Mevcut Bakiye',
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomText(
                  text: '\$ 6.450.000',
                  fontSize: 27,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  //yazıyı bolt yani kalın olarak ayarlar
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
