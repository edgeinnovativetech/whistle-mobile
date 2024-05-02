import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/screens/auth/signin/signin.dart';
import 'package:whistle_mobile/screens/auth/signup/photo-upload.dart';
import 'package:whistle_mobile/services/state/appstate.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../widgets/template-button.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SvgPicture.asset(Assets.images.success),

                //Sizedbox
                SizedBox(
                  height: height / 31.0666,
                ),

                // Joined Successfully
                Text(
                  'Password Changed',
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
                    'Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontWeight: FontWeight.w400,
                      fontSize: height / 58.25,
                      color: Color(0xFF5D5D5D),
                      height: height / 665.7142
                    ),
                  ),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 18.64,
                ),

                TemplateButton(
                  text: "Proceed to Login",
                  event: () => value.navigate(context, SignIn(), true),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 31.0666,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
