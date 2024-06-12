

import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key, required this.whatToDo,this.size, required this.onTapAction});
  final String whatToDo;
  final double? size;
  final Function()? onTapAction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapAction,
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff0969A6),),
      child: Text(whatToDo,style: TextStyle(fontSize: size,color: Colors.white,),),
    );
  }
}
