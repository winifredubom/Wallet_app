import 'package:flutter/cupertino.dart';


//title text for the addcard and Details screen
class TitleText extends StatelessWidget {
  final String text;

  TitleText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Color(0xff333333),
        ),
      ),
    );
  }
}
