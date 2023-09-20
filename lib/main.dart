import 'package:flutter/material.dart';
import 'package:wallet_app/screens/add_card.dart';
import 'package:wallet_app/screens/details_card.dart';
import 'package:wallet_app/screens/home.dart';
import 'package:wallet_app/screens/login_screen.dart';
import 'package:wallet_app/screens/notifcations.dart';
import 'package:wallet_app/screens/profileScreen.dart';
import 'package:wallet_app/screens/settings.dart';
import 'package:wallet_app/screens/signup_screen.dart';
import 'package:wallet_app/screens/stats.dart';
import 'package:wallet_app/screens/transfer.dart';
import 'package:wallet_app/utils/fl_chart.dart';
import 'package:wallet_app/utils/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: GlobalKey<NavigatorState>(), // Make sure this is unique and not used elsewhere,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: FiChartPage(),
      /*routes: {
        '/welcomeScreen': (context) => HomeScreen(),
        '/addCardScreens' : (context) =>Addcard_Screen() ,
        '/detailsScreen' : (context) => Details_cardScreen(),
        '/statsScreen' : (context) => Stats(),
        '/transferScreen': (context) => TransferScreen(),
        '/signupScreen' : (context) => SignupScreen(),
        '/loginScreen' : (context) => LoginScreen(),
        '/notifications': (context) => notifcationsTab(),
        '/settings': (context) => Settings(),
        '/profile' : (context) => Profile()
      },*/
    );
  }
}


