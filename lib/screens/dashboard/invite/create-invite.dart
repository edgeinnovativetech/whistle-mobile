import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/gen/fonts.gen.dart';
import 'package:whistle_mobile/services/state/appstate.dart';
import 'package:whistle_mobile/widgets/app-modals.dart';
import 'package:whistle_mobile/widgets/auth-textfield.dart';
import 'package:whistle_mobile/widgets/template-button.dart';

import '../../../gen/assets.gen.dart';

class CreateNewInvite extends StatelessWidget {
  const CreateNewInvite({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => Scaffold(
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

                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(Assets.images.backArrow),
                    ),
                  ],
                ),

                SizedBox(
                  height: height / 37.28,
                ),

                Text(
                  "Create new invite",
                  style: TextStyle(
                    fontFamily: FontFamily.creato,
                    fontSize: height / 37.28,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF151515),
                    height: height / height,
                  ),
                ),

                SizedBox(
                  height: height / 31.0666,
                ),

                AuthTextField(
                    controller: value.visitorName,
                    prefixIconPath: Assets.images.profile,
                    suffixIconPath: Assets.images.cancel,
                    placeholder: 'Visitor\'s name',
                    index: 1),

                AuthTextField(
                    controller: value.contactNumber,
                    prefixIconPath: Assets.images.call,
                    suffixIconPath: Assets.images.cancel,
                    placeholder: 'Contact number',
                    index: 1),

                GestureDetector(
                  onTap: () => value.setInvitationDate(context),
                  child: AuthTextField(
                    controller: value.inviteDate,
                    prefixIconPath: Assets.images.calendar,
                    suffixIconPath: Assets.images.cancel,
                    placeholder: 'Date of invitation',
                    index: 1,
                    isEnabled: false,
                  ),
                ),

                GestureDetector(
                  onTap: () => value.setInvitationTime(context),
                  child: AuthTextField(
                    controller: value.inviteTime,
                    prefixIconPath: Assets.images.clock,
                    suffixIconPath: Assets.images.cancel,
                    placeholder: 'Time of invitation',
                    index: 1,
                    isEnabled: false,
                  ),
                ),

                // TODO: Work on this aspect of scheduling
                GestureDetector(
                  onTap: () => AppModals.showScheduleMenu(
                    context,
                    height,
                    width,
                    value.invitationType,
                    value.expectedTime,
                    value.days,
                    value.startDate,
                    value.endDate,
                    //Event 1
                    () {},
                    //Event 2
                    () {},
                    //Event 3
                    () {},
                    //Event 4
                    () {},
                    //Event 5
                    () {},
                    //Back
                    () {},
                    //Done
                    () {},
                  ),
                  child: AuthTextField(
                    controller: TextEditingController(),
                    prefixIconPath: Assets.images.calendarEdit,
                    suffixIconPath: Assets.images.cancel,
                    placeholder: 'Schedule invitation',
                    index: 1,
                    isEnabled: false,
                  ),
                ),

                GestureDetector(
                  child: AuthTextField(
                    controller: value.invitePurpose,
                    prefixIconPath: Assets.images.purposeStar,
                    suffixIconPath: Assets.images.cancel,
                    placeholder: 'Purpose of invite (optional)',
                    index: 1,
                  ),
                ),

                // Sizedbox
                SizedBox(
                  height: height / 18.64,
                ),

                TemplateButton(event: () {}, text: "Share Invitation")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
