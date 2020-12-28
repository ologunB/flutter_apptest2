import 'package:flutter/material.dart';
import 'package:flutter_apptest2/pages/screen1.dart';
import 'package:flutter_apptest2/pages/screen2.dart';
import 'package:flutter_apptest2/pages/screen3.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final List<Widget> pages = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  int pageSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: pages[pageSelectedIndex],
        bucket: bucket,
      ),

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 25,
          onTap: (i) {
            setState(() {
              pageSelectedIndex = i;
            });
          },
          currentIndex: pageSelectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard, size: 20), label: "Counter 1"),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: "Counter 2"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 20), label: "Counter 3"),
          ]),
    );
  }
}
