import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/screens/auth/signup/join-confirmation.dart';
import 'package:whistle_mobile/screens/auth/signup/safety-email-addition.dart';
import 'package:whistle_mobile/services/state/appstate.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../widgets/register-continue-button.dart';
import '../../../widgets/template-button.dart';

class PhotoUpload extends StatelessWidget {
  const PhotoUpload({super.key});

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

                    // Create account
                    Text(
                      'Upload Photo',
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
                      height: height / 15.5333,
                    ),

                    // Image Upload Box
                    Container(
                      height: height / 4.66,
                      width: height / 4.66,
                      child: Stack(
                        children: [
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFCCCCCC),
                            ),
                            child: Center(
                              child: Text(
                                'J',
                                style: TextStyle(
                                  fontFamily: FontFamily.creato,
                                  fontWeight: FontWeight.w400,
                                  fontSize: height / 9.7083,
                                  color: Color(0xFF898989),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              child: Container(
                                height: height / 15.5333,
                                width: height / 15.5333,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF0066B2),
                                  border: Border.all(
                                    width: height / 466,
                                    color: Colors.white,
                                  ),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    Assets.images.pencilSimple,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),

                // Second
                RegisterContinueButton(
                  text: "Save changes",
                  isVisible: false,
                  event: () => value.navigate(
                    context,
                    SafetyEmail(),
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
