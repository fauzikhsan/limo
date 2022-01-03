//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:zetproject/screen/home/arvita.dart';
import 'package:zetproject/screen/home/home.dart';
import 'package:zetproject/screen/home/portofolio.dart';
import 'package:zetproject/screen/home/profil.dart';
import 'package:zetproject/screen/home/transaksi.dart';

void main() => runApp(new MyAppp());

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(canvasColor: Colors.transparent),
      home: new MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.displayname});
  final String displayname;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  // PageController _pageController;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  void initState() {
    _pageController = PersistentTabController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  late PersistentTabController _pageController;
  // PersistentTabController _pageController =
  //     PersistentTabController(initialIndex: 0);
  final _layoutPage = [
    HomePage(),
    // Search(),
    Portofolio(),
    Transaksi(),
    // Market(),
  ];

  // void _onTabItem(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      Transaksi(),
      Arvita(),
      Portofolio(),
      Profil(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.green,
        ),
        title: ("Home"),
        textStyle: TextStyle(
          fontSize: 12,
          color: Colors.green,
          fontFamily: "Poppins",
        ),
        inactiveIcon: Icon(
          Icons.home,
          color: Colors.grey,
          size: 22,
        ),
        activeColorPrimary: Color(0xff058c42),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.green,
        ),
        inactiveIcon: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.grey,
          size: 22,
        ),
        title: ("Transaksi"),
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: "Poppins",
        ),
        activeColorPrimary: Color(0xff058c42),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.bar_chart_rounded,
          color: Colors.white,
        ),
        inactiveIcon: Icon(
          Icons.bar_chart_rounded,
          color: Colors.white,
          size: 20,
        ),
        title: ("Arvita"),
        textStyle: TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
          fontSize: 12,
        ),
        activeColorPrimary: Color(0xff016db65),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_balance_wallet_outlined),
        inactiveIcon: Icon(
          Icons.account_balance_wallet_outlined,
          color: Colors.grey,
          size: 22,
        ),
        title: ("Portofolio"),
        textStyle: TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
          fontSize: 12,
        ),
        activeColorPrimary: Color(0xff058c42),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.person_outline_rounded,
        ),
        inactiveIcon: Icon(
          Icons.person_outline_rounded,
          color: Colors.grey,
          size: 22,
        ),
        title: ("Profil"),
        textStyle: TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
          fontSize: 12,
        ),
        activeColorPrimary: Color(0xff058c42),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _pageController,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
