import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';

class NavbarItem extends StatelessWidget {
  NavbarItem({
    super.key,
    required this.imgPath,
    required this.imgInactive,
    required this.label,
    required this.isActive,
    required this.event,
    required this.index,
  });

  String imgPath;
  String imgInactive;
  String label;
  bool isActive;
  VoidCallback event;
  int index;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: event,
      child: Container(
        height: height / 15.5333,
        width: height / 15.5333,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            index == 2
                ? SizedBox.shrink()
                : SvgPicture.asset(
                    isActive ? imgPath : imgInactive,
                  ),
            SizedBox(height: height / 310.6666),
            Text(
              label,
              style: TextStyle(
                fontFamily: FontFamily.creato,
                fontWeight: FontWeight.w700,
                fontSize: height / 93.2,
                color: isActive ? Color(0xFF0072D9) : Color(0xFF888888),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
