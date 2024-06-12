import 'package:flutter/material.dart';

class SettingsOptionsListTile extends StatelessWidget {
  const SettingsOptionsListTile({
    super.key, required this.optionName, required this.leadingIcon, required this.trailing,
  });
  final String optionName;
  final Widget trailing;
  final IconData leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),
      child: ListTile(
        title:Text(
          optionName,
          style:const TextStyle(fontSize: 20),
        ),
        leading:Container(
          height: 40,
          width: 40,
            clipBehavior: Clip.antiAlias,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20),color:const Color(0xff0969A6)),
          child:  Icon(
            leadingIcon,
            size: 30,
            color: Colors.black,
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}
