import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whistle_mobile/gen/assets.gen.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';
import 'package:whistle_mobile/widgets/pulltab-indicator.dart';
import 'package:whistle_mobile/widgets/schedule-textfield.dart';
import 'package:whistle_mobile/widgets/settings-modal-item.dart';
import 'package:whistle_mobile/widgets/template-comment.dart';

class AppModals {
  static void showScheduleMenu(
    BuildContext context,
    double height,
    double width,
    TextEditingController controller1,
    TextEditingController controller2,
    TextEditingController controller3,
    TextEditingController controller4,
    TextEditingController controller5,
    VoidCallback event1,
    VoidCallback event2,
    VoidCallback event3,
    VoidCallback event4,
    VoidCallback event5,
    VoidCallback back,
    VoidCallback done,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  height: height / 23.3,
                  child: Center(child: PullTabIndicator()),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 62.1333,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: height / 46.6),
                  child: Text(
                    'Scheduled Invite',
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontWeight: FontWeight.w500,
                      fontSize: height / 37.28,
                      color: Color(0xFF151515),
                    ),
                  ),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 18.64,
                ),

                ScheduleTextField(
                  controller: controller1,
                  height: height,
                  width: width,
                  label: "Invitation Type",
                  placeholder: "Lesson Teacher",
                  event: event1,
                ),
                ScheduleTextField(
                  controller: controller2,
                  height: height,
                  width: width,
                  label: "Expected Time",
                  placeholder: "8:00 AM",
                  event: event2,
                ),
                ScheduleTextField(
                  controller: controller3,
                  height: height,
                  width: width,
                  label: "Days in a week",
                  placeholder: "Monday, Wednesday & Friday",
                  event: event3,
                ),
                ScheduleTextField(
                  controller: controller4,
                  height: height,
                  width: width,
                  label: "Start Date",
                  placeholder: "4th January, 2024",
                  event: event4,
                ),
                ScheduleTextField(
                  controller: controller5,
                  height: height,
                  width: width,
                  label: "End Date",
                  placeholder: "4th Febuary, 2024",
                  event: event5,
                ),

                //Sizedbox
                SizedBox(
                  height: height / 18.64,
                ),

                Container(
                  height: height / 14.5625,
                  width: width,
                  padding: EdgeInsets.symmetric(
                    horizontal: height / 58.25,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFD1D1D1),
                        width: height / height,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: back,
                        child: Container(
                          width: height / 4.8795,
                          height: height / 21.6744,
                          child: Center(
                            child: Text(
                              'Back',
                              style: TextStyle(
                                fontFamily: FontFamily.creato,
                                fontSize: height / 58.25,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF0059B0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: done,
                        child: Container(
                          width: height / 4.8795,
                          height: height / 21.6744,
                          decoration: BoxDecoration(
                            color: Color(0xFF0059B0),
                            borderRadius: BorderRadius.circular(height / 58.25),
                          ),
                          child: Center(
                            child: Text(
                              'Done',
                              style: TextStyle(
                                fontFamily: FontFamily.creato,
                                fontSize: height / 58.25,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void showSettingsMenu(
    BuildContext context,
    double height,
    double width,
    VoidCallback event1,
    VoidCallback event2,
    VoidCallback event3,
    VoidCallback event4,
    VoidCallback event5,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  height: height / 23.3,
                  child: Center(child: PullTabIndicator()),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 31.0666,
                ),

                SettingsModalItem(
                  height: height,
                  iconPath: Assets.images.profile,
                  description: 'My Account',
                  event: event1,
                ),
                SettingsModalItem(
                  height: height,
                  iconPath: Assets.images.shieldSecurity,
                  description: 'Security',
                  event: event2,
                ),
                SettingsModalItem(
                  height: height,
                  iconPath: Assets.images.privay,
                  description: 'Privacy',
                  event: event3,
                ),
                SettingsModalItem(
                  height: height,
                  iconPath: Assets.images.question,
                  description: 'Support',
                  event: event4,
                ),
                SettingsModalItem(
                  height: height,
                  iconPath: Assets.images.buildings,
                  description: 'About',
                  event: event5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void showComments(
    BuildContext context,
    double height,
    double width,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF6F6F6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                height / (height / 24),
              ),
              topRight: Radius.circular(
                height / (height / 24),
              ),
            ),
          ),
          height: height / 1.09647,
          child: Column(
            children: [
              Container(
                width: width,
                height: height / 23.3,
                child: Center(child: PullTabIndicator()),
              ),

              //Sizedbox
              SizedBox(
                height: height / 31.0666,
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: height / 46.6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '24 comments',
                      style: TextStyle(
                        fontFamily: FontFamily.creato,
                        fontSize: height / 58.25,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF151515),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: height / 62.1333,
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    left: height / 46.6,
                    right: height / 46.6,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TemplateComment(
                          creatorName: 'Faith Jimoh',
                          createdAt: '15 mins ago',
                          likeCount: 3,
                          clapCount: 15,
                          textContent:
                              'Of course it’s safe to visit, but visitors just have to have street smarts and their wits about them more so than in almost any other major city in the world.',
                        ),
                        TemplateComment(
                          creatorName: 'Faith Jimoh',
                          createdAt: '15 mins ago',
                          likeCount: 3,
                          clapCount: 15,
                          textContent:
                              'Of course it’s safe to visit, but visitors just have to have street smarts and their wits about them more so than in almost any other major city in the world.',
                        ),
                        TemplateComment(
                          creatorName: 'Faith Jimoh',
                          createdAt: '15 mins ago',
                          likeCount: 3,
                          clapCount: 15,
                          textContent:
                              'Of course it’s safe to visit, but visitors just have to have street smarts and their wits about them more so than in almost any other major city in the world.',
                        ),
                        TemplateComment(
                          creatorName: 'Faith Jimoh',
                          createdAt: '15 mins ago',
                          likeCount: 3,
                          clapCount: 15,
                          textContent:
                              'Of course it’s safe to visit, but visitors just have to have street smarts and their wits about them more so than in almost any other major city in the world.',
                        ),
                        TemplateComment(
                          creatorName: 'Faith Jimoh',
                          createdAt: '15 mins ago',
                          likeCount: 3,
                          clapCount: 15,
                          textContent:
                              'Of course it’s safe to visit, but visitors just have to have street smarts and their wits about them more so than in almost any other major city in the world.',
                        ),
                        TemplateComment(
                          creatorName: 'Faith Jimoh',
                          createdAt: '15 mins ago',
                          likeCount: 3,
                          clapCount: 15,
                          textContent:
                              'Of course it’s safe to visit, but visitors just have to have street smarts and their wits about them more so than in almost any other major city in the world.',
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: height / 93.2,
              ),

              Container(
                height: height / 10.5909,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(height / 25.8888),
                    topRight: Radius.circular(height / 25.8888),
                  ),
                ),
                child: Center(
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
