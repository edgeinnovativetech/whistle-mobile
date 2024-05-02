import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';

class TemplateButton extends StatelessWidget {
  TemplateButton({
    super.key,
    required this.event,
    required this.text,
  });

  VoidCallback event;
  String text;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: event,
      child: Container(
        width: width,
        height: height / 15.5333,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height / 58.25),
          color: Color(0xFF0066B2),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: FontFamily.creato,
              fontWeight: FontWeight.w500,
              fontSize: height / 58.25,
            ),
          ),
        ),
      ),
    );
  }
}
