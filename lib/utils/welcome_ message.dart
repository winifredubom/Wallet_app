import 'package:flutter/cupertino.dart';


//welcome message for login and signUp screen
class WelcomeMessage extends StatelessWidget {
  final String text;

  WelcomeMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF2F1155),
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          letterSpacing: 0.24,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
