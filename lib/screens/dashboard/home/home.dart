import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/gen/assets.gen.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';
import 'package:whistle_mobile/services/state/appstate.dart';
import 'package:whistle_mobile/widgets/recent-invite.dart';

import '../../../widgets/app-modals.dart';
import '../invite/create-invite.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => value.isDataHomeEmpty
          ? Scaffold(
              backgroundColor: Colors.white,
              body: Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: height / 46.6),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Sizedbox
                      SizedBox(
                        height: height / 11.65,
                      ),

                      // Logo & Settings Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(Assets.images.logo),

                          // Settings Button
                          GestureDetector(
                            onTap: () => AppModals.showSettingsMenu(
                                context, height, width),
                            child: SvgPicture.asset(Assets.images.settings),
                          ),
                        ],
                      ),

                      // Sizedbox
                      SizedBox(
                        height: height / 31.0666,
                      ),

                      Text(
                        'Invite A Visitor',
                        style: TextStyle(
                          fontFamily: FontFamily.creato,
                          fontSize: height / 46.6,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),

                      // Sizedbox
                      SizedBox(
                        height: height / 466,
                      ),

                      Text(
                        'Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus ',
                        style: TextStyle(
                            fontFamily: FontFamily.creato,
                            fontSize: height / 58.25,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF5D5D5D),
                            height: height / 776.6666),
                      ),

                      // Sizedbox
                      SizedBox(
                        height: height / 23.3,
                      ),

                      Container(
                        height: height / 1.9872,
                        width: width,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F6),
                          borderRadius: BorderRadius.circular(height / 58.25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(Assets.images.noNotifications),

                            // Sizedbox
                            SizedBox(
                              height: height / 46.6,
                            ),

                            Text(
                              'No Notifications',
                              style: TextStyle(
                                fontFamily: FontFamily.creato,
                                fontSize: height / 37.28,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF151515),
                              ),
                            ),

                            // Sizedbox
                            SizedBox(
                              height: height / 93.2,
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: height / 18.64),
                              child: Text(
                                'Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: FontFamily.creato,
                                  fontSize: height / 58.25,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF5D5D5D),
                                ),
                              ),
                            ),

                            // Sizedbox
                            SizedBox(
                              height: height / 23.3,
                            ),

                            // Invite  Visitor button
                            GestureDetector(
                              onTap: () => value.navigate(
                                  context, CreateNewInvite(), false),
                              child: Container(
                                width: height / 4.9052,
                                height: height / 19.4166,
                                decoration: BoxDecoration(
                                  color: Color(0xFF0066B2),
                                  borderRadius:
                                      BorderRadius.circular(height / 58.25),
                                ),
                                child: Center(
                                    child: Text(
                                  'Invite Visitor',
                                  style: TextStyle(
                                    fontFamily: FontFamily.creato,
                                    fontSize: height / 58.25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          : Scaffold(
              backgroundColor: Color(0xFFF6F6F6),
              body: Container(
                width: width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Invites Container / Section
                      Container(
                        padding: EdgeInsets.only(
                          left: height / 46.6,
                          // right: height / 46.6,
                          bottom: height / 31.0666,
                        ),
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(height / 37.28),
                            bottomRight: Radius.circular(height / 37.28),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Sizedbox
                            SizedBox(
                              height: height / 11.65,
                            ),

                            // Logo & Settings Button
                            Padding(
                              padding: EdgeInsets.only(right: height / 46.6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(Assets.images.logo),

                                  // Settings Button
                                  GestureDetector(
                                    child: SvgPicture.asset(
                                        Assets.images.settings),
                                  ),
                                ],
                              ),
                            ),

                            // Sizedbox
                            SizedBox(
                              height: height / 31.0666,
                            ),

                            //
                            Text(
                              'My Invites',
                              style: TextStyle(
                                  fontFamily: FontFamily.creato,
                                  fontSize: height / 46.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF000000)),
                            ),

                            // Sizedbox
                            SizedBox(
                              height: height / 46.6,
                            ),

                            // Recent Invites
                            Padding(
                              padding: EdgeInsets.only(right: height / 93.2),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    // Create New Invite Button
                                    Container(
                                      height: height / 8.3214,
                                      width: height / 7.7666,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF6F6F6),
                                        borderRadius: BorderRadius.circular(
                                          height / 58.25,
                                        ),
                                      ),
                                      child: Center(
                                        child: Container(
                                          height: height / 29.125,
                                          width: height / 29.125,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF0072D9),
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              Assets.images.add,
                                              height: height / 38.8333,
                                              width: height / 38.8333,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    // Placeholder Recent Invites
                                    RecentInvite(),
                                    RecentInvite(),
                                    RecentInvite(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: height / 46.6,
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: height / 46.6,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Notifications center title
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                //
                                Text(
                                  'Notifications',
                                  style: TextStyle(
                                      fontFamily: FontFamily.creato,
                                      fontSize: height / 46.6,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF000000)),
                                ),

                                //
                                GestureDetector(
                                  child: Text(
                                    'Clear all',
                                    style: TextStyle(
                                        fontFamily: FontFamily.creato,
                                        fontSize: height / 58.25,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF454545)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
