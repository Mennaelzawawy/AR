import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({
    super.key,
    required this.hint,
    required this.icon,
  });
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: const BorderSide(
                color: Color(0xff0969A6),
              )),
          hintText: hint,
          hintMaxLines: 2,
          suffixIcon: Icon(
            icon,
          ),
          suffixIconColor: MaterialStateColor.resolveWith((states) =>
              states.contains(MaterialState.focused)
                  ? const Color(0xff0969A6)
                  : Colors.grey)),
    );
  }
}
