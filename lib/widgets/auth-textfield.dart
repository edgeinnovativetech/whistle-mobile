import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';

class AuthTextField extends StatelessWidget {
  AuthTextField(
      {super.key,
      required this.controller,
      required this.prefixIconPath,
      required this.suffixIconPath,
      required this.placeholder,
      required this.index,
      this.isPassword = false,
      this.isVisible = false,
      this.isEnabled = true});

  TextEditingController controller = TextEditingController();
  String prefixIconPath;
  String suffixIconPath;
  String placeholder;
  int index;
  bool isPassword;
  bool isVisible;
  bool isEnabled;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: index == 3
          ? EdgeInsets.only(bottom: 0)
          : EdgeInsets.only(bottom: height / 31.0666),
      height: height / 15.5333,
      child: TextFormField(
        enabled: isEnabled,
        enableSuggestions: isEnabled,
        controller: controller,
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: TextStyle(
            fontFamily: FontFamily.creato,
            fontSize: height / 58.25,
            fontWeight: FontWeight.w500,
            color: Color(0xFF151515),
          ),
          prefixIcon: Padding(
            padding: isPassword
                ? EdgeInsets.symmetric(
                    vertical: height / 62.1333,
                    horizontal: height / 62.1333,
                  )
                : EdgeInsets.symmetric(
                    vertical: height / 62.1333,
                    horizontal: height / 62.1333,
                  ),
            child: SvgPicture.asset(
              prefixIconPath,
            ),
          ),
          suffixIcon: Padding(
            padding: isPassword
                ? EdgeInsets.symmetric(vertical: 0)
                : EdgeInsets.symmetric(
                    vertical: height / 62.1333,
                    horizontal: height / 62.1333,
                  ),
            child: isPassword
                ? isVisible
                    ? IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.eye),
                        iconSize: height / 51.7777,
                      )
                    : IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.eyeSlash),
                        iconSize: height / 51.7777,
                      )
                : SvgPicture.asset(
                    suffixIconPath,
                  ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height / 58.25),
            borderSide:
                BorderSide(color: Color(0xFFD1D1D1), width: height / height),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height / 58.25),
            borderSide:
                BorderSide(color: Color(0xFFD1D1D1), width: height / height),
          ),
        ),
        style: TextStyle(
          fontFamily: FontFamily.creato,
          fontSize: height / 58.25,
          fontWeight: FontWeight.w500,
          color: Color(0xFF151515),
        ),
      ),
    );
  }
}
