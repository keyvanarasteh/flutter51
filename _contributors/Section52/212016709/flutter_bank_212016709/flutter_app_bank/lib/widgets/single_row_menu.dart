import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bank/utils/colors.dart';
import 'package:flutter_app_bank/widgets/custom_text.dart';
import 'package:flutter_svg/svg.dart';

class SingleRowMenu extends StatelessWidget {
  final VoidCallback? onTap;
  // yukarıdaki hata veriyor çıkarıp da bir dene.(VoidCallbak?) dar.html olduğu için hata
  final String? iconUrl;
  final String? text;

  const SingleRowMenu({Key? key, this.onTap, required this.iconUrl, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            padding: const EdgeInsetsDirectional.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 35, 2, 252).withOpacity(.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              iconUrl!,
              color: primaryColor,
              width: 35,
            ),
          ),
        ),
        CustomText(
          text: text!,
          fontSize: 17,
          color: Colors.grey,
        ),
      ],
    );
  }
}
