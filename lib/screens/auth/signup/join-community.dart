import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';
import 'package:whistle_mobile/screens/auth/signup/join-confirmation.dart';
import 'package:whistle_mobile/services/state/appstate.dart';

import '../../../gen/assets.gen.dart';
import '../../../widgets/template-button.dart';

class JoinCommunity extends StatelessWidget {
  const JoinCommunity({super.key});

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

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: height / 31.0666),
                  child: Text(
                    'Estate Invitation Code',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontWeight: FontWeight.w500,
                      fontSize: height / 23.8974,
                      height: height / 665.7142,
                      color: Color(0xFF3D3D3D),
                    ),
                  ),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 37.28,
                ),

                Text(
                  'Tap below to enter the Code',
                  style: TextStyle(
                    fontFamily: FontFamily.creato,
                    fontSize: height / 71.6923,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF151515),
                  ),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 93.2,
                ),

                TextFormField(
                  controller: value.signupInvitationCode,
                  decoration: InputDecoration(
                    hintText: "Enter Code",
                    hintStyle: TextStyle(
                      fontFamily: FontFamily.creato,
                      color: Color(0xFFF9F9F9),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(height / 58.25),
                      borderSide: BorderSide(
                        color: Color(0xFFD1D1D1),
                        width: height / height,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(height / 58.25),
                      borderSide: BorderSide(
                          color: Color(0xFFD1D1D1), width: height / height),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(height / 58.25),
                      borderSide: BorderSide(
                          color: Color(0xFFD1D1D1), width: height / height),
                    ),
                    suffixIcon: Icon(FontAwesomeIcons.eye),
                  ),
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontFamily: FontFamily.creato,
                    fontSize: height / 23.3,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3D3D3D),
                  ),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 9.32,
                ),

                TemplateButton(
                  text: "Submit",
                  event: () =>
                      value.navigate(context, JoinConfirmation(), false),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 31.0666,
                ),

                GestureDetector(
                  child: Text(
                    "I don’t have an invite code",
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontSize: height / 58.25,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0066B2),
                    ),
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
