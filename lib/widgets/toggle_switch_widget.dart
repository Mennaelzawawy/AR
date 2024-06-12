
import 'package:ar_app/main.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';


class ToggleSwitchWidget extends StatefulWidget {
  
  const ToggleSwitchWidget({super.key, this.locale});

  final Locale? locale;
  @override
  State<ToggleSwitchWidget> createState() => _ToggleSwitchWidgetState();
}

class _ToggleSwitchWidgetState extends State<ToggleSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 40.0,
      initialLabelIndex: 0,
      cornerRadius: 20.0,
      activeFgColor: Colors.white,
      inactiveBgColor: Colors.grey,
      inactiveFgColor: Colors.white,
      totalSwitches: 2,
      labels: const['En', 'Ar'],
      activeBgColors: const [[Color(0xff0969A6)],[Color(0xff0969A6)]],
      onToggle: (index) {
    ArApp.of(context).setLocale(index == 0 ? const Locale('en', '') : const Locale('ar', ''));
    
      },
    );
  }
}


