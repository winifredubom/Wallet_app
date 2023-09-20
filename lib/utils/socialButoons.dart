import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  final String buttonText;
  final String imagePath;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onPressed;

  SocialButton({
    required this.buttonText,
    required this.imagePath,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 2,
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            imagePath,
            width: 24,
            height: 24,
            color: textColor,
          ),
          SizedBox(width: 8),
          Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: textColor,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.08,
            ),
          ),
        ],
      ),
    );
  }
}
