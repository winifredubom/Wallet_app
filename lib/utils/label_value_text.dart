import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/utils/styles.dart';

class LabelValueText extends StatelessWidget {
  final String label;
  final String value;
  final Color labelColor;
  final Color valueColor;

  LabelValueText({
    required this.label,
    required this.value,
    this.labelColor = colors.detail_cardText,
    this.valueColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
              text: '$label: ',
              style: TextStyle(color: labelColor),
            ),
            TextSpan(
              text: value,
              style: TextStyle(color: valueColor),
            ),
          ],
        ),
      ),
    );
  }
}
