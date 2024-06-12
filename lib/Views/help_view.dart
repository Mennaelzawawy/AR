import 'package:flutter/material.dart';

class HelpView extends StatefulWidget {
  const HelpView({super.key});

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Align(
        alignment: Alignment.center,
        child: Text(
          'A-EYE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      content: SizedBox(
        height: 200,
        child: Expanded(
          child: Column(
            children: [
            Expanded(
              child: Text(
                  "Follow us: \ninsta: @aeye.s2024\ntwitter:@aeye_s2024\nfor issues:\ncontact : mennaelzaway@gmail.com",textDirection: TextDirection.ltr,),
            )
          ]),
        ),
      ),
    );
  }
}
