import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTextLabel extends StatelessWidget {
  final String text1;
  final String text2;
  final TextStyle style1;
  final TextStyle style2;
  final Function() onTap;

  RichTextLabel({
    required this.text1,
    required this.text2,
    required this.style1,
    required this.style2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: text1,
              style: style1,
            ),
            TextSpan(
              text: text2,
              style: style2,
            ),
          ],
        ),
      ),
    );
  }
}
