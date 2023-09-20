import 'package:flutter/cupertino.dart';

class NumberButton extends StatelessWidget {
  final String label;

  NumberButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: Color(0xff2F1155),
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
