import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton(
      {required String text,
      required Color color,
      required Color textColor,
      required VoidCallback onPressed,
      String? name})
      : super(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          color: color,
          onPressed: onPressed,
        );
}
