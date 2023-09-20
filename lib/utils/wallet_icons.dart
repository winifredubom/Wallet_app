import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/screens/transfer.dart';
import 'package:iconsax/iconsax.dart';

class MyIconButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(60, 10,48, 0),
      child: Row(
          children: [
            MyButtonWithIconAndText(
              icon: Iconsax.convert,
              text: 'Transfer',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TransferScreen()));// Add your logic for the Home button here
              },
            ),
            SizedBox(width: 30,),
            MyButtonWithIconAndText(
              icon: Iconsax.export,
              text: 'Payment',
              onPressed: () {
                // Add your logic for the Favorite button here
              },
            ),
            SizedBox(width: 30,),
            MyButtonWithIconAndText(
              icon: Iconsax.money_send,
              text: 'Payout',
              onPressed: () {
                // Add your logic for the Search button here
              },
            ),
            SizedBox(width: 30,),
            MyButtonWithIconAndText(
              icon: Iconsax.add_circle,
              text: 'Top Up',
              onPressed: () {
                // Add your logic for the Settings button here
              },
            ),
          ],
      ),
    );
  }
}


class MyButtonWithIconAndText extends StatelessWidget {
  final IconData icon;
  final String? label;
  final VoidCallback onPressed;
  final String text;

  const MyButtonWithIconAndText({
    required this.icon,
     this.label,
    required this.onPressed, required this.text
  });


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black, blurRadius: 2.5)]
            ),
            child: IconButton(
            onPressed: () {},
            icon: Icon(icon, color: Color(0xff6E34B8),
      size: 28,),
            ),),
      SizedBox(height: 10,),
           /* child: Center(
              /*child: ElevatedButton(
                onPressed: () {
                  // Add your button click logic here
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                    fixedSize: Size(40, 40),
                    shadowColor: Colors.white.withOpacity(1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    backgroundColor: Colors.white),),*/
              child:Icon(icon, color: Color(0xff6E34B8),
      size: 28,)),

          ),
          Container(
            width: 40,
            height: 40,
            child: Center(
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    backgroundColor: Colors.white
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 25, 5),
                      child: Icon(
                        icon,
                        color: Color(0xff6E34B8),
                        size: 25,
                      ),
                    ),
                  )),
            ),
          ),*/

          Text(text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: Color(0xff4F4F4F)
          ),)
        ],
      );
  }
}