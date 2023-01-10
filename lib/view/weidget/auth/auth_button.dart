import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';
import '../text_utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  AuthButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: Get.isDarkMode ? Colors.red : mainColor,
          minimumSize: const Size(360, 50)),
      child: TextUtils(
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          textDecoration: TextDecoration.none),
    );
  }
}
