import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';
import 'package:whistle_mobile/screens/dashboard/invite/create-invite.dart';
import 'package:whistle_mobile/services/state/appstate.dart';

import '../../../gen/assets.gen.dart';

class Invite extends StatelessWidget {
  const Invite({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => !value.isDataInviteEmpty
          ? Scaffold(
              backgroundColor: Colors.white,
              body: Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: height / 46.6),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Sizedbox
                      SizedBox(
                        height: height / 11.65,
                      ),

                      // Logo & Settings Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invites",
                            style: TextStyle(
                              fontFamily: FontFamily.creato,
                              fontSize: height / 29.125,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF151515),
                              letterSpacing: height / -582.5,
                            ),
                          ),

                          // Addition Button
                          GestureDetector(
                            onTap: () => value.navigate(
                                context, CreateNewInvite(), false),
                            child: Container(
                              width: height / 19.4166,
                              height: height / 19.4166,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF6F6F6),
                              ),
                              child: Center(
                                child: SvgPicture.asset(Assets.images.addition),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Sizedbox
                      SizedBox(
                        height: height / 46.6,
                      ),

                      // Search bar
                      Container(
                        height: height / 16.6428,
                        width: width,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: height / height, color: Color(0xFFD1D1D1)),
                          borderRadius: BorderRadius.circular(
                            height / 58.25,
                          ),
                        ),
                      ),

                      // Sizedbox
                      SizedBox(
                        height: height / 46.6,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Recent Invites',
                            style: TextStyle(
                              fontFamily: FontFamily.creato,
                              fontWeight: FontWeight.w500,
                              fontSize: height / 46.6,
                              color: Colors.black,
                            ),
                          ),

                          // TODO: Add functionality
                          GestureDetector(
                            child: Icon(
                              FontAwesomeIcons.ellipsisVertical,
                              size: height / 46.6,
                            ),
                          )
                        ],
                      ),

                      // Sizedbox
                      SizedBox(
                        height: height / 46.6,
                      ),
                    ],
                  ),
                ),
              ),
            )
          : Scaffold(
              backgroundColor: Colors.white,
              body: Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: height / 46.6),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Sizedbox
                      SizedBox(
                        height: height / 11.65,
                      ),

                      // Logo & Settings Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invites",
                            style: TextStyle(
                              fontFamily: FontFamily.creato,
                              fontSize: height / 29.125,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF151515),
                              letterSpacing: height / -582.5,
                            ),
                          ),

                          // Addition Button
                          GestureDetector(
                            onTap: () => value.navigate(
                                context, CreateNewInvite(), false),
                            child: Container(
                              width: height / 19.4166,
                              height: height / 19.4166,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF6F6F6),
                              ),
                              child: Center(
                                child: SvgPicture.asset(Assets.images.addition),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Sizedbox
                      SizedBox(
                        height: height / 9.32,
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
                              SvgPicture.asset(Assets.images.noInvites),

                              // Sizedbox
                              SizedBox(
                                height: height / 46.6,
                              ),

                              Text(
                                'No Activity',
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
                                    horizontal: height / 62.1333),
                                child: Text(
                                  'Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus Lorem ipsum dolor sit amet consectetur.',
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
                                  width: height / 4.2363,
                                  height: height / 16.6428,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius:
                                        BorderRadius.circular(height / 58.25),
                                    border: Border.all(
                                      color: Color(0xFF151515),
                                      width: height / height,
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Create Invite',
                                    style: TextStyle(
                                      fontFamily: FontFamily.creato,
                                      fontSize: height / 58.25,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF151515),
                                    ),
                                  )),
                                ),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
