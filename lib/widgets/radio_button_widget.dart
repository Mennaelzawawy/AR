import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

String _selectGender = 'Male';

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ListTile(
        title: Text('Male'),
        leading: Radio<String>(
          value: "Male",
          groupValue: _selectGender,
          onChanged: (String? value) {
            setState(() {
              _selectGender =value!;
            });
          },
        ),
      ),
      ListTile(
        title: Text('Female'),
        leading: Radio<String>(
          value: "Female",
          groupValue: _selectGender,
          onChanged: (String? value) {
            setState(() {
              _selectGender =value!;
            });
          },
        ),
      )
    ]);
  }
}
