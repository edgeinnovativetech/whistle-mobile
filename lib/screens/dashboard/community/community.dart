import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../services/state/appstate.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: height / 46.6),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Sizedbox
                SizedBox(
                  height: height / 11.65,
                ),

                // Logo & Settings Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Community",
                      style: TextStyle(
                          fontFamily: FontFamily.creato,
                          fontSize: height / 29.125,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF151515),
                          letterSpacing: height / -582.5,),
                    ),

                    // Settings Button
                    GestureDetector(
                      child: SvgPicture.asset(Assets.images.settings),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  
  }
}