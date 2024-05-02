import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/gen/assets.gen.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';
import 'package:whistle_mobile/screens/auth/signup/verify-email.dart';
import 'package:whistle_mobile/services/state/appstate.dart';
import 'package:whistle_mobile/widgets/auth-textfield.dart';
import 'package:whistle_mobile/widgets/password-strength-indicator.dart';
import 'package:whistle_mobile/widgets/register-continue-button.dart';

class AccountCreation2 extends StatelessWidget {
  const AccountCreation2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => Scaffold(
        body: Container(
          width: width,
          height: height * 1,
          child: SingleChildScrollView(
            child: SizedBox(
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // First
                  Column(
                    children: [
                      // Sizedbox
                      SizedBox(
                        height: height / 12.4266,
                      ),

                      // Create account
                      Text(
                        'Create Account',
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
                              color: Color(0xFF5D5D5D)),
                        ),
                      ),

                      //Sizedbox
                      SizedBox(
                        height: height / 18.64,
                      ),

                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: height / 46.6),
                        child: Column(
                          children: [
                            AuthTextField(
                              controller: value.signupPassword,
                              prefixIconPath: Assets.images.lock,
                              suffixIconPath: '',
                              placeholder: 'Enter Password',
                              index: 4,
                              isPassword: true,
                            ),
                            Container(
                              width: width,
                              height: height / 18.64,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      PasswordStrengthIndicator(
                                          isValidated: false,
                                          validation: "1 number"),
                                      PasswordStrengthIndicator(
                                          isValidated: false,
                                          validation: "1 special character"),
                                    ],
                                  ),
                                  PasswordStrengthIndicator(
                                      isValidated: false,
                                      validation: "8 characters"),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  // Second
                  Container(
                    width: width,
                    padding: EdgeInsets.symmetric(
                      horizontal: height / 46.6,
                    ),
                    child: RegisterContinueButton(
                      text: "Continue",
                      isVisible: true,
                      event: () =>
                          value.navigate(context, VerifyEmail(), false),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
