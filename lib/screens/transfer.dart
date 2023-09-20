import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/screens/home.dart';
import 'package:wallet_app/utils/buttons.dart';
import 'package:wallet_app/utils/styles.dart';

import '../utils/numberButtons.dart';
import '../utils/outlined_button.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  List<String> items = ['Item 1'];
  String selectedItem = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 0, top: 0),
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color:Color(0xffF2F2F2), // Background color of the circular container
          ),
          child: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            }, icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: colors.bottomNav_color,
          ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Text(' \$1200',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w500,
                color: Color(0xff2F1155),
              ),),
            const SizedBox(height: 30,),
            OutlinedButtonWithLabel(
              label: 'Mabank',
              onPressed: () {},
            ),
            const SizedBox(height: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumberButton(label: '1'),
                    const SizedBox(width: 110),
                    NumberButton(label: '2'),
                    const SizedBox(width: 110),
                    NumberButton(label: '3'),
                  ],
                ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumberButton(label: '4'),
                    const SizedBox(width: 110),
                    NumberButton(label: '5'),
                    const SizedBox(width: 110),
                    NumberButton(label: '6'),
        ],
      ),
                const SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumberButton(label: '7'),
                        const SizedBox(width: 110),
                        NumberButton(label: '8'),
                        const SizedBox(width: 110),
                        NumberButton(label: '9'),
                  ],
                ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumberButton(label: '00'),
                    const SizedBox(width: 110,),
                    NumberButton(label: '0'),
                    const SizedBox(width: 110,),
                    const Icon(
                      Iconsax.close_circle,
                      color: Color(0xff2F1155),
                      size: 24,
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Buttons(text: "Transfer",
                    backgroundColor: colors.cardcolor3,
                    onPressed: (){})
              ],
            )
          ],
        ),
      ),
    );
  }
}



