import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/widgets/auth-textfield.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../services/state/appstate.dart';
import '../../../widgets/register-continue-button.dart';

class EmergencyContacts extends StatelessWidget {
  const EmergencyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => Scaffold(
        body: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: height / 46.6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    // Sizedbox
                    SizedBox(
                      height: height / 12.4266,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset(Assets.images.backArrow),
                        ),
                        GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: height / 93.2,
                              horizontal: height / 46.4,
                            ),
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                fontFamily: FontFamily.creato,
                                fontSize: height / 58.25,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF0066B2),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                    //Sizedbox
                    SizedBox(
                      height: height / 31.0666,
                    ),

                    // Add a Safety email
                    Text(
                      'Add Emergency Contacts',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: FontFamily.creato,
                          fontSize: height / 23.8974,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF151515),
                          letterSpacing: height / -517.7777),
                    ),

                    //Sizedbox
                    SizedBox(
                      height: height / 93.2,
                    ),

                    // Description
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: height / 46.6,
                      ),
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: FontFamily.creato,
                            fontWeight: FontWeight.w400,
                            fontSize: height / 58.25,
                            color: const Color(0xFF5D5D5D),
                            height: height / 665.7142),
                      ),
                    ),

                    //Sizedbox
                    SizedBox(
                      height: height / 31.0666,
                    ),

                    AuthTextField(
                      controller: value.signupEmergencyContact1,
                      prefixIconPath: Assets.images.call,
                      suffixIconPath: Assets.images.cancel,
                      placeholder: "Phone Number 1",
                      index: 0,
                    ),
                    AuthTextField(
                      controller: value.signupEmergencyContact2,
                      prefixIconPath: Assets.images.call,
                      suffixIconPath: Assets.images.cancel,
                      placeholder: "Phone Number 2",
                      index: 0,
                    ),
                  ],
                ),

                // Second
                Column(
                  children: [
                    Container(
                      width: width,
                      padding: EdgeInsets.all(height / 58.25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height / 58.25),
                          color: Color(0xFFFBF5FE),
                          ),
                      child: LayoutBuilder(
                        builder: (context, constraints) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: constraints.maxWidth * 0.075,
                                child: Center(
                                  child: SvgPicture.asset(
                                    Assets.images.info,
                                  ),
                                )),
                            Container(
                              width: constraints.maxWidth * 0.9,
                              child: Text(
                                'Your emergency contacts will be contacted if there is an emergency',
                                style: TextStyle(
                                  fontFamily: FontFamily.creato,
                                  fontSize: height / 58.25,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF5D5D5D),
                                  height: height / 665.7142,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    //Sizedbox
                    SizedBox(
                      height: height / 46.6,
                    ),

                    RegisterContinueButton(
                      text: "Continue",
                      isVisible: false,
                      event: () => value.navigate(
                        context,
                        SizedBox(),
                        false,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
