import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';
import 'package:whistle_mobile/screens/auth/signin/signin.dart';
import 'package:whistle_mobile/screens/auth/signup/create-account-1.dart';
import 'package:whistle_mobile/services/state/appstate.dart';
import 'package:whistle_mobile/widgets/pageview-card.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              height: height / 1.191815,
              width: width * 1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(height / 29.125),
                  bottomRight: Radius.circular(height / 29.125),
                ),
              ),
              child: Stack(
                children: [
                  PageView(
                    controller: value.onboardindSlideController,
                    children: value.onboardingData
                        .map(
                          (e) => PageviewCard(
                            height: height,
                            imagePath: e['imagePath'],
                            title: e['title'],
                            description: e['description'],
                            imageType: e['imageType'],
                          ),
                        )
                        .toList(),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: width,
                      height: height / 18.64,
                      child: Column(
                        children: [
                          SmoothPageIndicator(
                            controller: value.onboardindSlideController,
                            count: 4,
                            effect: ExpandingDotsEffect(
                                dotWidth: height / 116.5,
                                dotHeight: height / 116.5,
                                dotColor: Color(0xFFD7D7D7),
                                activeDotColor: Color(0xFF0066B2),
                                expansionFactor: 6),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Sixedbox
            SizedBox(
              height: height / 31.0666,
            ),

            //Get Started Button
            GestureDetector(
              onTap: () => value.navigate(context, AccountCreation1(), false),
              child: Container(
                width: width * 0.8,
                height: height / 15.5333,
                decoration: BoxDecoration(
                  color: Color(0xFF0066B2),
                  borderRadius: BorderRadius.circular(height / 46.6),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontWeight: FontWeight.w500,
                      fontSize: height / 58.25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            //Sizedbox
            SizedBox(
              height: height / 46.6,
            ),

            // Have an account? Login
            GestureDetector(
              onTap: () => value.navigate(context, SignIn(), false),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Have an account? ',
                      style: TextStyle(
                        fontFamily: FontFamily.creato,
                        fontSize: height / 58.25,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3D3D3D),
                      ),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        fontFamily: FontFamily.creato,
                        fontSize: height / 58.25,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3D3D3D),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
