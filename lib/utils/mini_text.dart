import 'package:flutter/cupertino.dart';

class Mini_message extends StatelessWidget {
  final String text;

  Mini_message({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF828282),
        fontSize: 13,
        fontWeight: FontWeight.w500,
        fontFamily: 'Quicksand',
        letterSpacing: 0.065,
      ),
    );
  }
}
