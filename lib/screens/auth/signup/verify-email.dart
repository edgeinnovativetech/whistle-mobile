import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/gen/assets.gen.dart';
import 'package:whistle_mobile/screens/auth/signup/verification-confirmation.dart';
import 'package:whistle_mobile/services/state/appstate.dart';
import 'package:whistle_mobile/widgets/register-continue-button.dart';

import '../../../gen/fonts.gen.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => Scaffold(
        body: SizedBox(
          height: height * 1,
          width: width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: height / 46.6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //First
                Column(
                  children: [
                    // Sizedbox
                    SizedBox(
                      height: height / 12.4266,
                    ),

                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset(Assets.images.backArrow),
                        ),
                      ],
                    ),

                    // Verify Email
                    Text(
                      'Verify Email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: FontFamily.creato,
                          fontSize: height / 23.8974,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF151515),
                          letterSpacing: height / -517.7777),
                    ),

                    //Sizedbox
                    SizedBox(
                      height: height / 93.2,
                    ),

                    // Description
                    Text(
                      'We have sent an email with the verification code to',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontFamily.creato,
                        fontWeight: FontWeight.w400,
                        fontSize: height / 58.25,
                        color: Color(0xFF5D5D5D),
                      ),
                    ),
                    Text(
                      value.signupEmail.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: FontFamily.creato,
                          fontWeight: FontWeight.w500,
                          fontSize: height / 58.25,
                          color: Color(0xFF151515),
                          height: height / height),
                    ),

                    // Sizedbox
                    SizedBox(
                      height: height / 18.64,
                    ),

                    //Verification Passcode Field

                    //

                    //Sizedbox
                    SizedBox(
                      height: height / 18.64,
                    ),

                    //Resend Countdown
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Resend code in ',
                            style: TextStyle(
                              fontFamily: FontFamily.creato,
                              fontWeight: FontWeight.w400,
                              fontSize: height / 58.25,
                              color: Color(0xFF5D5D5D),
                            ),
                          ),
                          TextSpan(
                            text: '48s',
                            style: TextStyle(
                              fontFamily: FontFamily.creato,
                              fontWeight: FontWeight.w500,
                              fontSize: height / 58.25,
                              color: Color(0xFF151515),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Sizedbox
                    SizedBox(
                      height: height / 37.28,
                    ),

                    //Change email address
                    GestureDetector(
                      child: Text(
                        'Change email address',
                        style: TextStyle(
                          fontFamily: FontFamily.creato,
                          fontSize: height / 58.25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0076CB),
                        ),
                      ),
                    )
                  ],
                ),

                // Second
                RegisterContinueButton(
                  text: "Verify",
                  isVisible: false,
                  event: () => value.navigate(
                    context,
                    VerificationConfirmation(),
                    true,
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
