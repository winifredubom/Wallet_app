import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/utils/atm_card.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/utils/styles.dart';
import 'package:wallet_app/utils/title_text.dart';

class Addcard_Screen extends StatefulWidget {
  const Addcard_Screen({super.key});

  @override
  State<Addcard_Screen> createState() => _Addcard_ScreenState();
}

class _Addcard_ScreenState extends State<Addcard_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.topLeft,
          padding:const EdgeInsets.only(left: 0, top: 0),
          margin: const EdgeInsets.all(10),
          decoration:const  BoxDecoration(
            shape: BoxShape.circle,
            color:Colors.white, // Background color of the circular container
          ),
          child: IconButton(
            onPressed: (){},icon:const  Icon(
            Iconsax.arrow_circle_left,
            size: 20,
            color: colors.bottomNav_color,),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleText(text: 'Add card'),
           const SizedBox(height: 30,),
          const Addcard(),
           const SizedBox(height: 30,),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add a new card\n on your wallet for easy life",
              textAlign: TextAlign.center,
              style: TextStyle(
              height: 1.5,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                letterSpacing: 0.5
              ),)
            ],
          )
        ],
      ),
    );
  }
}
