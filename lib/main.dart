import 'package:app1305/help.dart';
import 'package:app1305/screens/alert.dart';
import 'package:app1305/screens/cart.dart';
import 'package:app1305/screens/home.dart';
import 'package:app1305/screens/members.dart';
import 'package:app1305/screens/menu.dart';
import 'package:app1305/screens/products.dart';
import 'package:app1305/shared.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

void main() {
  return runApp(App1305());
}

class App1305 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  // var pages = <Widget>[HomePage(), ProductPage(), MemberPage(), HelpPage()];
  // int _navItemIndex = 0;
  int _navBarIndex = 0;
  int _cartItemsCount = 0;
  int _alertCount = 0;

  @override
  Widget build(BuildContext context) {
    Share.addCart = (int num) {
      setState(() => _cartItemsCount++);
    };

    Share.removeCart = () {
      setState(() {
        if (_cartItemsCount > 0) {
          _cartItemsCount--;
        }
      });
    };

    Share.addAlert = () {
      setState(() {
        _alertCount++;
      });
    };

    Share.removeAlert = () {
      setState(() {
        if (_alertCount > 0) {
          _alertCount--;
        }
      });
    };

    var pages = <Widget>[
      HomePage(),
      CartPage(),
      AlertPage(),
      MenuPage(),
    ];

    return Scaffold(
      body: pages[_navBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _navBarIndex,
        items: bottomNavItems(),
        onTap: (index) => setState(() {
          _navBarIndex = index;
        }),
      ),
    );
  }

  List<BottomNavigationBarItem> bottomNavItems() {
    var navItemIcons = [
      Icons.home,
      Icons.shopping_cart,
      Icons.notifications,
      Icons.menu,
    ];

    var navItemLabels = ['Home', 'Cart', 'Alert', 'Menu'];

    var _badges = [0, _cartItemsCount, _alertCount, 0];

    return List.generate(
      navItemIcons.length,
      (index) => BottomNavigationBarItem(
        icon: buildBadge(
          _badges[index],
          navItemIcons[index],
        ),
        label: navItemLabels[index],
      ),
    );
  }

  Widget buildBadge(dynamic count, IconData icn) {
    var showBadge = false;

    if (count > 0) {
      showBadge = true;
    }

    return badges.Badge(
      child: Icon(
        icn,
        color: Colors.white,
      ),
      showBadge: showBadge,
      badgeContent: Text(
        '$count',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      badgeStyle: badges.BadgeStyle(
        badgeColor: Colors.orange,
      ),
      position: badges.BadgePosition.topEnd(),
      badgeAnimation: badges.BadgeAnimation.fade(),
    );
  }
}
