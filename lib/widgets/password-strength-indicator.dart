import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whistle_mobile/gen/assets.gen.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';

class PasswordStrengthIndicator extends StatelessWidget {
  PasswordStrengthIndicator(
      {super.key, required this.isValidated, required this.validation});

  bool isValidated;
  String validation;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        SvgPicture.asset(Assets.images.closeCircle),
        SizedBox(
          width: height / 186.4,
        ),
        Text(
          validation,
          style: TextStyle(
            fontFamily: FontFamily.creato,
            fontWeight: FontWeight.w500,
            fontSize: height / 71.6972,
            color: Color(0xFF5D5D5D),
          ),
        )
      ],
    );
  }
}
