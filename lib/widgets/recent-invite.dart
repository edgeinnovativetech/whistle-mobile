import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';

class RecentInvite extends StatelessWidget {
  const RecentInvite({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 8.3214,
      width: height / 7.7666,
      margin: EdgeInsets.only(left: height / 93.2),
      padding: EdgeInsets.symmetric(
          horizontal: height / 93.2, vertical: height / 62.1333),
      decoration: BoxDecoration(
        color: Color(0xFFDDEFFF),
        borderRadius: BorderRadius.circular(
          height / 58.25,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: TextStyle(
                    fontFamily: FontFamily.creato,
                    fontWeight: FontWeight.w500,
                    fontSize: height / 66.5714,
                    color: Colors.black,
                    height: height / height),
              ),

              //Sizedbox
              SizedBox(
                height: height / 186.4,
              ),

              Text(
                '14:00 PM',
                style: TextStyle(
                    fontFamily: FontFamily.creato,
                    fontWeight: FontWeight.w500,
                    fontSize: height / 66.5714,
                    color: Color(0xFF034078),
                    height: height / height),
              ),
            ],
          ),

          // //Sizedbox
          // SizedBox(
          //   height: height / 186.4,
          // ),

          Container(
            height: height / 46.6,
            width: height / 46.6,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.pink[100]),
          ),

          // //Sizedbox
          // SizedBox(
          //   height: height / 186.4,
          // ),

          Text(
            'Jacinta Daniels',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontFamily: FontFamily.creato,
                fontWeight: FontWeight.w500,
                fontSize: height / 66.5714,
                color: Colors.black,
                height: height / height),
          )
        ],
      ),
    );
  }
}
