import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../gen/assets.gen.dart';
import '../gen/fonts.gen.dart';

class SettingsModalItem extends StatelessWidget {
  SettingsModalItem({
    super.key,
    required this.height,
    required this.iconPath,
    required this.description,
    required this.event
  });

  double height;
  String iconPath;
  String description;
  VoidCallback event;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: event,
      child: Padding(
        padding: EdgeInsets.only(
          left: height / 31.0666,
          bottom: height / 23.3,
        ),
        child: Row(children: [
          SvgPicture.asset(iconPath),

          //Sizedbox
          SizedBox(
            width: height / 46.6,
          ),

          Text(
            description,
            style: TextStyle(
              fontFamily: FontFamily.creato,
              fontSize: height / 58.25,
              fontWeight: FontWeight.w500,
              color: Color(0xFF151515),
            ),
          )
        ]),
      ),
    );
  }
}
