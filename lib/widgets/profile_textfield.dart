import 'package:flutter/material.dart';

class ProfileTextFieldWidget extends StatefulWidget {
  const ProfileTextFieldWidget(
      {super.key, required this.hintName, required this.prefixIcon, required this.labelName, required this.obsecuredText});
  final String hintName;
  final String labelName;
  final IconData prefixIcon;
  final bool obsecuredText;

  @override
  State<ProfileTextFieldWidget> createState() => _ProfileTextFieldWidgetState();
}

class _ProfileTextFieldWidgetState extends State<ProfileTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText:widget.obsecuredText ,
        decoration: InputDecoration(
          labelText: widget.labelName,
          labelStyle: const TextStyle(color: Color(0xff0969A6)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
            focusedBorder: const OutlineInputBorder(
                //borderRadius: BorderRadius.circular(35),
                borderSide:BorderSide(
                  color: Color(0xff0969A6),
                )),
            hintText: widget.hintName,
            hintMaxLines: 2,
            prefixIcon: Icon(widget.prefixIcon),
            prefixIconColor: MaterialStateColor.resolveWith((states) =>
                states.contains(MaterialState.focused)
                    ? const Color(0xff0969A6)
                    : Colors.grey)),
      ),
    );
  }
}
