import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/gen/assets.gen.dart';
import 'package:whistle_mobile/services/state/appstate.dart';
import 'package:whistle_mobile/widgets/navbar-item.dart';

class DashboardHandler extends StatelessWidget {
  const DashboardHandler({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppState>(
      builder: (context, value, child) => Scaffold(
        extendBody: true,
        body: value.dashboardPages[value.dashboardCurrIndex]['route'],
        floatingActionButton: Transform.scale(
          scale: height / 665.7142,
          child: FloatingActionButton(
            onPressed: () {},
            elevation: 2,
            shape: CircleBorder(),
            backgroundColor: Color(0xFF0059B0),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          width: width,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(height / 46.6),
              topRight: Radius.circular(height / 46.6),
            ),
          ),
          child: BottomAppBar(
            elevation: 5,
            padding: EdgeInsets.symmetric(),
            height: height / 13.7058,
            shape: CircularNotchedRectangle(),
            notchMargin: height / 62.1333,
            color: Color(0xFFFEFEFE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...value.navbarItems.map((e) => NavbarItem(
                    imgPath: e['imgPath'],
                    imgInactive: e['imgInactive'],
                    label: e['label'],
                    isActive: e['isActive'],
                    event: () => value.inlineNavigate(e['index']),
                    index: e['index'])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
