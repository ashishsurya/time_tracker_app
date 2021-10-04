import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/common_widgets/custom_raised_button.dart';

class SocialSigninButton extends CustomRaisedButton {
  SocialSigninButton({
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  })  : assert(text != ""),
        assert(assetName != ""),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(assetName),
              SizedBox(
                width: 12.0,
              ),
              Text(
                text,
                style: TextStyle(color: textColor),
              )
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
