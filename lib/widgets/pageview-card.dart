import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';

class PageviewCard extends StatelessWidget {
  PageviewCard(
      {super.key,
      required this.height,
      required this.imagePath,
      required this.title,
      required this.description,
      required this.imageType});

  double height;
  String imagePath;
  String title;
  String description;
  String imageType;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: height / 3.452,
              width: width * 0.8,
              child: imageType == "svg"
                  ? SvgPicture.asset(
                      imagePath,
                      fit: BoxFit.contain,
                    )
                  : Image.asset(
                      imagePath,
                      fit: BoxFit.contain,
                    ),
            ),
            SizedBox(
              height: height / 18.64,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: height / 18.64,
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontFamily.creato,
                    fontWeight: FontWeight.w500,
                    fontSize: height / 23.8974,
                    height: height / 665.7412,
                    color: Color(0xFF3D3D3D)),
              ),
            ),
            SizedBox(
              height: height / 46.6,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: height / 31.0666,
              ),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontFamily.creato,
                    fontWeight: FontWeight.normal,
                    fontSize: height / 51.7777,
                    height: height / 621.3333,
                    color: Color(0xFF3D3D3D)),
              ),
            ),
            SizedBox(
              height: height / 7.7666,
            ),
          ],
        ),
      ),
    );
  }
}
