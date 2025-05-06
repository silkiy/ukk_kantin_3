// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import '../pages/user/activity_page.dart';
import '../pages/user/home_page_student.dart';
import '../pages/user/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedItem;
  const BottomNavBar({super.key, required this.selectedItem});

  @override
  State<BottomNavBar> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNavBar> {
  int _currentIndex = 0;

  void changeSelectedNavBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePageStudent()),
      );
    } else if (index == 1) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ActivityPage()),
      );
    } else if (index == 2) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      backgroundColor: const Color.fromRGBO(243, 244, 248, 1),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Transaksi',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black26,
      currentIndex: widget.selectedItem,
      onTap: changeSelectedNavBar,
    );
  }
}
