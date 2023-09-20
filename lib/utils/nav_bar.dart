import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home.dart';
import 'package:wallet_app/screens/notifcations.dart';
import 'package:wallet_app/screens/settings.dart';
import 'package:wallet_app/screens/stats.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_svg/flutter_svg.dart';


class FloatingBottomNav extends StatefulWidget {
  const FloatingBottomNav({super.key});

  @override
  State<FloatingBottomNav> createState() => _FloatingBottomNavState();
}

class _FloatingBottomNavState extends State<FloatingBottomNav>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _showBottomNavBar = true; // Control the visibility of the bottom navigation bar

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }



  // Define your custom icons for both active and inactive states
  final List<dynamic> customIconsActive = [
    SvgPicture.asset(
      'images/wallet-1.svg', // Replace with your SVG file path
      height: 24, // Set the height and width as needed
      width: 24,
      color: Colors.white, // Customize the color if necessary
    ),// Active icon for Favorites, // Active icon for Home
    SvgPicture.asset(
      'images/chart-1.svg', // Replace with your SVG file path
      height: 24, // Set the height and width as needed
      width: 24,
      color: Colors.white, // Customize the color if necessary
    ),
    SvgPicture.asset(
      'images/notification-bing1.svg', // Replace with your SVG file path
      height: 24, // Set the height and width as needed
      width: 24,
      color: Colors.white, // Customize the color if necessary
    ), // Active icon for Settings
    SvgPicture.asset(
      'images/setting1.svg', // Replace with your SVG file path
      height: 24, // Set the height and width as needed
      width: 24,
      color: Colors.white, // Customize the color if necessary
    ), // Active icon for Profile
  ];

  final List<dynamic> customIconsInactive = [
    SvgPicture.asset(
      'images/wallet-2.svg', // Replace with your SVG file path
      height: 24, // Set the height and width as needed
      width: 24,
      color: Colors.white, // Customize the color if necessary
    ),// Active icon for Favorites, // Inactive icon for Home
    SvgPicture.asset(
      'images/chart-2.svg', // Replace with your SVG file path
      height: 24, // Set the height and width as needed
      width: 24,
      color: Colors.white, // Customize the color if necessary
    ), // Inactive icon for Favorites
    SvgPicture.asset(
      'images/notification-bing.svg', // Replace with your SVG file path
      height: 24, // Set the height and width as needed
      width: 24,
      color: Colors.white, // Customize the color if necessary
    ), // Inactive icon for Settings
    SvgPicture.asset(
      'images/setting.svg', // Replace with your SVG file path
      height: 24, // Set the height and width as needed
      width: 24,
      color: Colors.white, // Customize the color if necessary
    ), // Inactive icon for Profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          HomeScreen(),
          Stats(),
          notifcationsTab(),
          Settings(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: _showBottomNavBar
          ? DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              HomeScreen(),
              Stats(),
              notifcationsTab(),
              Settings(),
            ],
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              child: Container(
                height: 78,
                color: Color(0xff2F1155),
                child: TabBar(
                  onTap: (index) {
                    _tabController.index = index;
                    // Update the TabController index
                  },
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.white,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.black, width: 0),
                    insets: EdgeInsets.fromLTRB(50, 0, 50, 40),
                  ),
                  indicatorColor: Colors.black,
                  tabs: <Widget>[
                    for (int i = 0; i < customIconsActive.length; i++)
                      Tab(
                        icon: customIconsActive[i] is IconData
                            ? Icon(
                          customIconsActive[i],
                          color: _tabController.index == i
                              ? Colors.white // Active icon color
                              : Colors.white, // Inactive icon color
                        )
                            : customIconsInactive[i], // SVG image widget
                      ),
                  ],
                  controller: _tabController,
                ),
              ),
            ),
          ),
        ),
      )
          : null,
    );
  }
}



