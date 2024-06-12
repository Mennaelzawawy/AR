import 'package:flutter/material.dart';

class GradientCircleWidget extends StatelessWidget {
  const GradientCircleWidget({super.key, required this.heightNum, required this.widthtNum});
  final double heightNum;
  final double widthtNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: heightNum,
      width: widthtNum,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color(0xff0969A6),
            Color(0xff0a8cbe),
            Color(0xff06b2d8),
          ])),
    );
  }
}
