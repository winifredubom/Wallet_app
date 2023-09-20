import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlinedButtonWithLabel extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  OutlinedButtonWithLabel({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 64,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Color(0xffF2F2F2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                label,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2F1155),
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(0xff828282),
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
