// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import '../pages/stan/home_page_stan.dart';
import '../pages/stan/pelanggan_stan_page.dart';
import '../pages/stan/recap_penjualan_page.dart';


class BottomNavBarStan extends StatefulWidget {
  final int selectedItem;
  const BottomNavBarStan({super.key, required this.selectedItem});

  @override
  State<BottomNavBarStan> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNavBarStan> {
  int _currentIndex = 0;

  void changeSelectedNavBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePageStan()),
      );
    } else if (index == 1) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const RecapPenjualanPage()),
      );
    } else if (index == 2) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => PelangganStanPage()),
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
