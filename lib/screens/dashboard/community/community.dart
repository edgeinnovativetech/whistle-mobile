import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/widgets/app-modals.dart';
import 'package:whistle_mobile/widgets/template-post.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../services/state/appstate.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: height / 46.6),
          child: Column(
            children: [
              // Sizedbox
              SizedBox(
                height: height / 11.65,
              ),
      
              // Logo & Settings Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Community",
                    style: TextStyle(
                      fontFamily: FontFamily.creato,
                      fontSize: height / 29.125,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF151515),
                      letterSpacing: height / -582.5,
                    ),
                  ),
                  Row(
                    children: [
                      // TODO: Implement functionality for checking chats
                      GestureDetector(
                        child: SvgPicture.asset(
                          Assets.images.chat,
                          height: height / 23.3,
                          width: height / 23.3,
                        ),
                      ),
      
                      //Sizedbox
                      SizedBox(
                        width: height / 93.2,
                      ),
      
                      // TODO: implement functionality for creating post
                      GestureDetector(
                        child: Container(
                          height: height / 23.3,
                          width: height / 23.3,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF0066B2),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              Assets.images.add,
                              height: height / 38.8333,
                              width: height / 38.8333,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
      
              //Sizedbox
              SizedBox(
                height: height / 23.3,
              ),
      
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Sample posts
                      TemplatePost(
                        creatorName: "Victor King",
                        createdAt: "15 mins ago",
                        likeCount: 3,
                        clapCount: 15,
                        textContent:
                            'Of course it’s safe to visit, but visitors just have to have street smarts and their wits about them more so than in almost any other major city in the world.',
                        openComments: () => AppModals.showComments(context, height, width),
                      ),
                      TemplatePost(
                        creatorName: "Idris Elba",
                        createdAt: "15 mins ago",
                        likeCount: 3,
                        clapCount: 15,
                        textContent:
                            'Of course it’s safe to visit, but visitors just have to have street smarts and their wits about them more so than in almost any other major city in the world.',
                        openComments: () {},
                      ),
                      TemplatePost(
                        creatorName: "Faith Jimoh",
                        createdAt: "15 mins ago",
                        likeCount: 3,
                        clapCount: 15,
                        textContent:
                            'Of course it’s safe to visit, but visitors just have to have street smarts and their wits about them more so than in almost any other major city in the world.',
                        imageUrl: 'hd',
                        openComments: () {},
                      ),
      
                      // Sizedbox
                      SizedBox(
                        height: height / 9.32,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
