import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../gen/assets.gen.dart';
import '../gen/fonts.gen.dart';

class TemplatePost extends StatelessWidget {
  const TemplatePost(
      {super.key,
      required this.creatorName,
      this.textContent = '',
      required this.createdAt,
      required this.likeCount,
      required this.clapCount,
      this.imageUrl = '',
      this.profileImageUrl = '',
      required this.openComments});

  final String creatorName;
  final String textContent;
  final String createdAt;
  final int likeCount;
  final int clapCount;
  final String imageUrl;
  final String profileImageUrl;
  final VoidCallback openComments;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        bottom: height / 23.3,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height / 23.3,
            width: height / 23.3,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.purple[100]),
          ),

          //Sizedbox
          SizedBox(
            width: height / 93.2,
          ),

          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: height / 186.4,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      creatorName,
                      style: TextStyle(
                        fontFamily: FontFamily.creato,
                        fontSize: height / 51.7777,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.images.postEllipsisVertical,
                      height: height / 23.3,
                      width: height / 23.3,
                    )
                  ],
                ),

                // Image Container
                imageUrl.length == 0
                    ? SizedBox.shrink()
                    : Container(
                        width: width,
                        height: height / 6.5633,
                        margin: EdgeInsets.only(
                            right: height / 58.25, left: height / 186.4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(height / 116.5),
                            color: Colors.grey),
                      ),

                //Sizedbox
                SizedBox(
                  height: height / 62.1333,
                ),

                // Text Content
                Padding(
                  padding: EdgeInsets.only(
                      right: height / 58.25, left: height / 186.4),
                  child: Text(
                    textContent,
                    style: TextStyle(
                        fontFamily: FontFamily.creato,
                        fontSize: height / 66.5714,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF777777)),
                  ),
                ),

                //Sizedbox
                SizedBox(
                  height: height / 62.1333,
                ),

                //Post interactions and info container
                Padding(
                  padding: EdgeInsets.only(
                    right: height / 58.25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Post Interactions
                      Row(
                        children: [
                          // Likes
                          Row(
                            children: [
                              SvgPicture.asset(
                                Assets.images.heartUnfilled,
                                height: height / 38.8333,
                                width: height / 38.8333,
                              ),

                              // Sizedbox
                              SizedBox(
                                width: height / 186.4,
                              ),

                              Text(
                                likeCount.toString(),
                                style: TextStyle(
                                  fontFamily: FontFamily.creato,
                                  fontSize: height / 66.5714,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFAEAEAE),
                                ),
                              )
                            ],
                          ),

                          // Sizedbox
                          SizedBox(
                            width: height / 62.1333,
                          ),

                          // Claps
                          Row(
                            children: [
                              SvgPicture.asset(
                                Assets.images.clapUnfilled,
                                height: height / 38.8333,
                                width: height / 38.8333,
                              ),

                              // Sizedbox
                              SizedBox(
                                width: height / 186.4,
                              ),

                              Text(
                                clapCount.toString(),
                                style: TextStyle(
                                  fontFamily: FontFamily.creato,
                                  fontSize: height / 66.5714,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFAEAEAE),
                                ),
                              )
                            ],
                          ),

                          // Sizedbox
                          SizedBox(
                            width: height / 62.1333,
                          ),

                          // Comments
                          GestureDetector(
                            onTap: openComments,
                            child: SvgPicture.asset(
                              Assets.images.comments,
                              height: height / 38.8333,
                              width: height / 38.8333,
                            ),
                          )
                        ],
                      ),

                      // Time Posted
                      Text(
                        createdAt,
                        style: TextStyle(
                          fontFamily: FontFamily.creato,
                          fontSize: height / 66.5714,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFAEAEAE),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
