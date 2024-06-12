
import 'package:ar_app/main.dart';
import 'package:flutter/material.dart';

class SwitchModeButtonWidget extends StatefulWidget {
  const SwitchModeButtonWidget({super.key});

  @override
  State<SwitchModeButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchModeButtonWidget> {
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Switch(activeColor: const Color(0xff0969A6),
      value: isSwitched, onChanged: (value){
setState(() {
          isSwitched = value;
          if (value) {
            ArApp.of(context).changeTheme(ThemeMode.dark);
          } else {
            ArApp.of(context).changeTheme(ThemeMode.light);
          }
    });
  }
);}}