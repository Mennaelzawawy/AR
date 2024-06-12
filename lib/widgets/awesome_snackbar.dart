import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class AwesomeSnackBarWidget extends StatelessWidget {
  const AwesomeSnackBarWidget({
    super.key, required this.title, required this.message, required this.type,
  });
  final String title;
  final String message;
  final ContentType type;

  @override
  Widget build(BuildContext context) {
    return AwesomeSnackbarContent(
      title: title,
      message: message,
      contentType: type,
    );
  }
}

