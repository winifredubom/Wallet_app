import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/utils/atm_card.dart';
import 'package:wallet_app/utils/transaction_history.dart';
import 'package:wallet_app/utils/wallet_icons.dart';
import 'package:wallet_app/utils/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  children: [
                    const Padding(
                      padding:  EdgeInsets.fromLTRB(20, 57, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Wallet',
                                    style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xff2F1155)
                                    ),
                                  ),
                            Text('Active',
                              style: TextStyle(fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                              color: colors.active_text),),

                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(''),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    MyCard(),
                    SizedBox(height: 20,),
                     MyIconButtons(),
                    SizedBox(height: 30,),//MyContainerWithRows()
                    MyContainerWithRows(),

                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}


