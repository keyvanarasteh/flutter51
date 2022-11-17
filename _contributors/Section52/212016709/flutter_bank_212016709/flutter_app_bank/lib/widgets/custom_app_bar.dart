import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bank/utils/colors.dart';
import 'package:flutter_app_bank/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  final String? userName;

  const CustomAppBar({super.key, required this.userName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomText(
                text: 'Günaydın',
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: userName!,
                fontSize: 22,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4E03AQFMU7319ND96Q/profile-displayphoto-shrink_200_200/0/1647466392033?e=1671667200&v=beta&t=TqVgmNwU7PAQp6UTC4L-pY4LGfO2PFK9-C2fhIvyjzA'),
          ),
        ],
      ),
    );
  }
}
