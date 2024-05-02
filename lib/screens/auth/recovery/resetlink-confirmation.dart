import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/screens/auth/recovery/create-new-password.dart';
import 'package:whistle_mobile/screens/auth/signup/join-confirmation.dart';
import 'package:whistle_mobile/services/state/appstate.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../widgets/template-button.dart';

class ResetLinkConfirmation extends StatelessWidget {
  const ResetLinkConfirmation({super.key});

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

                //Sizedbox
                SizedBox(
                  height: height / 15.5333,
                ),

                SvgPicture.asset(Assets.images.success),

                //Sizedbox
                SizedBox(
                  height: height / 31.0666,
                ),

                // Verification Successful
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: height / 31.0666),
                  child: Text(
                    'Reset password link sent',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: FontFamily.creato,
                        fontSize: height / 23.8974,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF151515),
                        letterSpacing: height / -517.7777),
                  ),
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
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'We sent a message to ',
                          style: TextStyle(
                            fontFamily: FontFamily.creato,
                            fontSize: height / 58.25,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF5D5D5D),
                          ),
                        ),
                        TextSpan(
                          text: value.loginEmail.text,
                          style: TextStyle(
                            fontFamily: FontFamily.creato,
                            fontSize: height / 58.25,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF151515),
                          ),
                        ),
                        TextSpan(
                          text: ' with a link to reset your password',
                          style: TextStyle(
                            fontFamily: FontFamily.creato,
                            fontSize: height / 58.25,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF5D5D5D),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 18.64,
                ),

                TemplateButton(
                  text: "Open email app",
                  event: () =>
                      value.navigate(context, const CreateNewPassword(), false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
