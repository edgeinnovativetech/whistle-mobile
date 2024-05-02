import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/gen/assets.gen.dart';
import 'package:whistle_mobile/screens/auth/recovery/revover-account.dart';
import 'package:whistle_mobile/screens/dashboard/dashboard-handler.dart';
import 'package:whistle_mobile/widgets/auth-textfield.dart';
import 'package:whistle_mobile/widgets/template-button.dart';

import '../../../gen/fonts.gen.dart';
import '../../../services/state/appstate.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
        builder: (context, value, child) => Scaffold(
              body: Container(
                width: width,
                height: height,
                padding: EdgeInsets.symmetric(
                  horizontal: height / 46.6,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Sizedbox
                    SizedBox(
                      height: height / 4.66,
                    ),

                    // Create account
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontFamily.creato,
                        fontSize: height / 23.8974,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF151515),
                        letterSpacing: height / -517.7777,
                      ),
                    ),

                    // Sizedbox
                    SizedBox(
                      height: height / 23.3,
                    ),

                    //Sign in with google
                    GestureDetector(
                      child: Container(
                        width: width,
                        height: height / 16.6428,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height / 58.25),
                          border: Border.all(
                            color: Color(0xFFD1D1D1),
                            width: height / height,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(Assets.images.googleLogo),

                            //Sizedbox
                            SizedBox(
                              width: height / 93.2,
                            ),

                            Text(
                              'Login with Google',
                              style: TextStyle(
                                fontFamily: FontFamily.creato,
                                fontSize: height / 58.25,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF151515),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    //Sizedbox
                    SizedBox(
                      height: height / 31.0666,
                    ),

                    //Divider
                    Divider(),

                    //Sizedbox
                    SizedBox(
                      height: height / 31.0666,
                    ),

                    //Email Textfield
                    AuthTextField(
                      controller: value.loginEmail,
                      prefixIconPath: Assets.images.sms,
                      suffixIconPath: Assets.images.cancel,
                      placeholder: "Enter email",
                      index: 0,
                    ),

                    //Password Textfield
                    AuthTextField(
                      controller: value.loginEmail,
                      prefixIconPath: Assets.images.lock,
                      suffixIconPath: Assets.images.cancel,
                      placeholder: "Password",
                      index: 3,
                      isPassword: true,
                    ),

                    //Sizedbox
                    SizedBox(
                      height: height / 37.28,
                    ),

                    // Login button
                    TemplateButton(
                      event: () => value.navigate(context, DashboardHandler(), true),
                      text: "Login",
                    ),

                    // Sizedbox
                    SizedBox(
                      height: height / 46.6,
                    ),

                    // Forgot password
                    GestureDetector(
                      onTap: () =>
                          value.navigate(context, RecoverAccount(), false),
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontFamily: FontFamily.creato,
                          fontSize: height / 58.25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0066B2),
                        ),
                      ),
                    ),

                    // Sizedbox
                    SizedBox(
                      height: height / 18.64,
                    ),

                    // Biometric Login
                    GestureDetector(
                      child: SvgPicture.asset(
                        Assets.images.biometric,
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
