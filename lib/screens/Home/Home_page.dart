import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/constant.dart';
import '../Dashboard/Dashboard_screen.dart';
import '../Portfolio/Portfolio_screen.dart';
import '../Profile/Profile_screen.dart';
import '../Universe/Universe_screen.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home), label: "Portfolio"),
  BottomNavigationBarItem(icon: Icon(Icons.manage_search), label: "Search"),
  BottomNavigationBarItem(icon: Icon(Icons.air), label: "Activity"),
  BottomNavigationBarItem(
      icon: Icon(Icons.account_balance_wallet), label: "Account")
];

List<Widget> bottomNavScreen = <Widget>[
  PortfolioScreen(),
  UniverseScreen(),
  ProfileScreen(),
];
const List<String> appBarTitles = [
  "Portfolio0",
  "Search",
  "Activity",
  "Account"
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  void _onBottomNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.bgWhite,
      appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appBarTitles[_currentIndex],
                style: TextStyle(
                    fontSize: 18,
                    color: Constant.bgWhite,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          actions: [IconButton(onPressed: null, icon: Icon(Icons.search))]),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // SizedBox(height: 48.0),
                if (_currentIndex == 0) DashboardScreen(),
                if (_currentIndex == 1) PortfolioScreen(),
                if (_currentIndex == 2) UniverseScreen(),
                if (_currentIndex == 3) ProfileScreen(),
              ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Constant.comTxtdullDu12,
        currentIndex: _currentIndex,
        onTap: _onBottomNavItemTapped,
        items: bottomNavItems,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
