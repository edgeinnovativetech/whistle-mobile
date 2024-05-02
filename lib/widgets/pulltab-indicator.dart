import 'package:flutter/material.dart';

class PullTabIndicator extends StatelessWidget {
  const PullTabIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: height / 7.7666,
      height: height / 155.3333,
      decoration: BoxDecoration(
        color: Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(height / 233),
      ),
    );
  }
}
