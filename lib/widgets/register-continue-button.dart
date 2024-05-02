import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';

class RegisterContinueButton extends StatelessWidget {
  RegisterContinueButton({
    super.key,
    required this.text,
    required this.isVisible,
    required this.event,
  });

  VoidCallback event;
  String text;
  bool isVisible;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
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
        ),

        //Sizedbox
        SizedBox(
          height: height / 46.6,
        ),

        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: height / 93.2,
          ),
          child: Opacity(
            opacity: isVisible ? 1 : 0,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'I confirm that I\'ve read and consent to Whistle ',
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontSize: height / 58.25,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy ',
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontSize: height / 58.25,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0066B2),
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontSize: height / 58.25,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                  TextSpan(
                    text: 'agreements',
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontSize: height / 58.25,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0066B2),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        //Sizedbox
        SizedBox(
          height: height / 31.0666,
        ),
      ],
    );
  }
}
