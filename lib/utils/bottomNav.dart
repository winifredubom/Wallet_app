import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../screens/home.dart';
import '../screens/profileScreen.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  /*final List<Widget> _pages = [
    HomeScreen(), // Screen 1: Home
    Profile(), // Screen 2: Profile
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Example'),
      ),
      body: Center(
        //child: _pages.elementAt(_currentIndex),
        bottomNavigationBar:  Container(
          height: 160,
          padding: EdgeInsets.fromLTRB(25, 40, 25, 40),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: BottomNavigationBar(
              backgroundColor: Color(0xff2F1155),
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              selectedIconTheme: IconThemeData(color: Colors.white, opacity: 1.0),
              unselectedIconTheme: IconThemeData(color: Colors.black.withOpacity(0.6)),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Iconsax.wallet_2),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Iconsax.chart_2),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Iconsax.notification_bing),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}



