import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../utils/atm_card.dart';
import 'package:wallet_app/utils/styles.dart';

import '../utils/label_value_text.dart';
import '../utils/title_text.dart';

class Details_cardScreen extends StatefulWidget {
  const Details_cardScreen({super.key});

  @override
  State<Details_cardScreen> createState() => _Details_cardScreenState();
}

class _Details_cardScreenState extends State<Details_cardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 0, top: 0),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:Color(0xffF2F2F2), // Background color of the circular container
            ),
            child: IconButton(
              onPressed: (){}, icon: Icon(
              Iconsax.arrow_circle_left,
              size: 20,
              color: colors.bottomNav_color,
            ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      TitleText(text: 'Detail card',),
          SizedBox(height: 30,),
          Detail_card(),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(100, 40, 20, 0),
              child:  Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelValueText(label: 'Name', value: 'Jaka mambang', labelColor: colors.detail_cardText, valueColor: Colors.black,),
                      SizedBox(height: 14),
                      LabelValueText(label: 'Bank', value: 'Mabank', labelColor: colors.detail_cardText, valueColor: Colors.black,),
                      SizedBox(height: 14),
                      LabelValueText(
                        label: 'Account',
                        value: '**** **** **** 2138', labelColor: colors.detail_cardText, valueColor: Colors.black,
                      ),
                      SizedBox(height: 14),
                      LabelValueText(label: 'Status', value: 'Active', labelColor: colors.detail_cardText, valueColor: Colors.black,),
                      SizedBox(height: 14),
                      LabelValueText(label: 'Valid', value: '2020 - 2025', labelColor: colors.detail_cardText, valueColor: Colors.black),
                    ],
                  ),
                  SizedBox(width: 30),

                ],
              ),
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Column(
              children: [Text('Delete Card',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                  color: colors.cardcolor2
              ),)],
            ),
          ),
    ],
      ),
    );
  }
}

