import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home.dart';
import 'package:instagram_clone/screens/setting.dart';

import 'screens/search.dart';
import 'screens/shop.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;
  void _navigationBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    Home(),
    Search(),
    Container(child: Text("shop")),
    Shop(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text(
      //         "Instagram",
      //         style: TextStyle(color: Colors.black),
      //       ),
      //       Row(
      //         children: [
      //           Icon(
      //             Icons.favorite_outline,
      //             color: Colors.black,
      //           ),
      //           SizedBox(width: 20),
      //           Icon(
      //             Icons.message_outlined,
      //             color: Colors.black,
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_outlined), label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined), label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
        ],
      ),
    );
  }
}
