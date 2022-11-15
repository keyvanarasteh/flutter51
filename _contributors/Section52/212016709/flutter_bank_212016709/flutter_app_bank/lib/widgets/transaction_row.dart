import 'package:flutter/material.dart';
import 'package:flutter_app_bank/utils/colors.dart';
import 'package:flutter_app_bank/widgets/custom_text.dart';

class TransactionRow extends StatelessWidget {
  final String? title;
  final String? description;
  final double? amount;
  final bool? isPositif;

  const TransactionRow({
    required super.key,
    required this.title,
    required this.description,
    required this.amount,
    required this.isPositif,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.inventory_outlined,
              size: 30,
              color: primaryColor,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title!,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: description!,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          CustomText(
            text: isPositif!
                ? '+\$ ${amount!.toStringAsFixed(2)}'
                : '-\$ ${amount!.toStringAsFixed(2)}',
            color: isPositif! ? Colors.green : Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
