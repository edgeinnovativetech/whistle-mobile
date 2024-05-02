import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/screens/auth/recovery/password-changed.dart';
import 'package:whistle_mobile/screens/auth/signup/join-confirmation.dart';
import 'package:whistle_mobile/services/state/appstate.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../widgets/auth-textfield.dart';
import '../../../widgets/password-strength-indicator.dart';
import '../../../widgets/template-button.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

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
                  height: height / 9.32,
                ),

                // Create account
                Text(
                  'Create new password',
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
                  'Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontWeight: FontWeight.w400,
                      fontSize: height / 58.25,
                      color: Color(0xFF5D5D5D)),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 18.64,
                ),

                // Textfields
                Column(
                  children: [
                    AuthTextField(
                      controller: value.recoveryNewPassword,
                      prefixIconPath: Assets.images.lock,
                      suffixIconPath: '',
                      placeholder: 'New Password',
                      index: 4,
                      isPassword: true,
                    ),
                    AuthTextField(
                      controller: value.recoveryConfirmPassword,
                      prefixIconPath: Assets.images.lock,
                      suffixIconPath: '',
                      placeholder: 'Confirm Password',
                      index: 4,
                      isPassword: true,
                    ),
                    Container(
                      width: width,
                      height: height / 18.64,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PasswordStrengthIndicator(
                                  isValidated: false,
                                  validation: "1 small letter"),
                              PasswordStrengthIndicator(
                                  isValidated: false,
                                  validation: "1 capital letter"),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PasswordStrengthIndicator(
                                  isValidated: false, validation: "1 number"),
                              PasswordStrengthIndicator(
                                  isValidated: false,
                                  validation: "1 special character"),
                            ],
                          ),
                          PasswordStrengthIndicator(
                              isValidated: false, validation: "8 characters"),
                        ],
                      ),
                    )
                  ],
                ),

                //Sizedbox
                SizedBox(
                  height: height / 4.66,
                ),

                TemplateButton(
                  text: "Save New Password",
                  event: () =>
                      value.navigate(context, PasswordChanged(), false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
