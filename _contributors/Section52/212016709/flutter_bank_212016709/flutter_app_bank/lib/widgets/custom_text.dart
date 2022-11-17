import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double fontSize;
  final FontWeight? fontWeight;

  const CustomText(
      {super.key,
      required this.text,
      this.color,
      required this.fontSize,
      this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
