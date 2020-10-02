import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:virtual_traveller_flutter/ui/pages/settings_page/settings_page.dart';
import 'package:virtual_traveller_flutter/ui/pages/watchlist_page/watchlist_page.dart';
import 'package:virtual_traveller_flutter/utils/theme_utils.dart';

import 'ui/pages/flights_page/flights_page.dart';
import 'ui/pages/home_page/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: ColorUtils.primaryDefaultColorBlue,
    ),
  );

  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currActiveTabIndex = 0;

  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeUtils.defaultDarkBlueTheme,
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomePage(
              onSettingsTap: () => _onTapChangeBottomNavBarItem(3, isAnim: true),
            ),
            FlightPage(),
            WatchlistPage(),
            SettingsPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currActiveTabIndex,
          items: [
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text('Flights'),
              icon: Icon(Icons.flight),
            ),
            BottomNavigationBarItem(
              title: Text('Watchlist'),
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              title: Text('Settings'),
              icon: Icon(Icons.settings),
            ),
          ],
          onTap: (index) => _onTapChangeBottomNavBarItem(index),
        ),
      ),
    );
  }

  void _onTapChangeBottomNavBarItem(int index, {bool isAnim = false}) {
    setState(() {
      _currActiveTabIndex = index;

      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: isAnim ? 500 : 250),
        curve: Curves.easeIn,
      );
    });
  }
}
