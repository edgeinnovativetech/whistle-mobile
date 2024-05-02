import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../gen/assets.gen.dart';
import '../gen/fonts.gen.dart';

class ScheduleTextField extends StatelessWidget {
  ScheduleTextField({
    super.key,
    required this.controller,
    required this.height,
    required this.width,
    required this.label,
    required this.placeholder,
    required this.event,
  });

  TextEditingController controller;
  double height;
  double width;
  String label;
  String placeholder;
  VoidCallback event;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: height / 46.6,
        right: height / 46.6,
        bottom: height / 46.6,
      ),
      child: Container(
        height: height / 15.5333,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(
            width: height / height,
            color: Color(0xFFD1D1D1),
          ),
          borderRadius: BorderRadius.circular(height / 58.25),
        ),
        clipBehavior: Clip.hardEdge,
        child: LayoutBuilder(
          builder: (context, constraints) => Row(
            children: [
              Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth * 0.9,
                padding: EdgeInsets.only(
                  left: height / 46.6,
                  top: height / 186.4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        fontFamily: FontFamily.creato,
                        fontSize: height / 62.1333,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(0),
                          hintText: placeholder,
                          hintStyle: TextStyle(
                            fontFamily: FontFamily.creato,
                            fontSize: height / 62.1333,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF888888),
                          ),
                        ),
                        cursorColor: Colors.black,
                        style: TextStyle(
                          fontFamily: FontFamily.creato,
                          fontSize: height / 62.1333,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: event,
                child: Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth * 0.1,
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.images.cancel,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
