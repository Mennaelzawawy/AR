import 'package:ar_app/main.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonWidget extends StatefulWidget {
  const LikeButtonWidget({super.key});

  @override
  State<LikeButtonWidget> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: 25,
      mainAxisAlignment: MainAxisAlignment.start,
      isLiked: false,
      likeCount: 0,
      animationDuration:const Duration(milliseconds: 800),
      likeBuilder: (isLiked) {
        final color = isLiked ? Colors.red : Colors.grey;
        return Icon(
          Icons.favorite,
          color: color,
        );
      },
      countBuilder: (likeCount, isLiked, text) {
        final color = isLiked & isLight(context) ? Colors.black : Colors.grey;
        return Text(
          text,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
