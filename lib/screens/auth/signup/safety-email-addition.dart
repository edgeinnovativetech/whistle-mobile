import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/screens/auth/signup/emergency-contacts.dart';
import 'package:whistle_mobile/widgets/auth-textfield.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../services/state/appstate.dart';
import '../../../widgets/register-continue-button.dart';

class SafetyEmail extends StatelessWidget {
  const SafetyEmail({super.key});

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
                      'Add a Safety email',
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
                      controller: value.signupSafetyEmail,
                      prefixIconPath: Assets.images.sms,
                      suffixIconPath: Assets.images.cancel,
                      placeholder: "Enter email",
                      index: 0,
                    )
                  ],
                ),

                // Second
                RegisterContinueButton(
                  text: "Continue",
                  isVisible: false,
                  event: () => value.navigate(
                    context,
                    EmergencyContacts(),
                    false,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
