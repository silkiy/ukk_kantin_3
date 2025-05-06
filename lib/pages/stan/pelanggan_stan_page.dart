import 'package:flutter/material.dart';

import '../../components/bottom_nav_bar_stan.dart';
import '../../components/card_pelanggan_stan.dart';
import 'crud/add_pelanggan_stan_page.dart';

class PelangganStanPage extends StatefulWidget {
  const PelangganStanPage({super.key});

  @override
  State<PelangganStanPage> createState() => _PelangganStanPageState();
}

class _PelangganStanPageState extends State<PelangganStanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              color: Color(0xffD9D9D9),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Data Pelanggan",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Column(children: [CardPelangganStan()]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPelangganStanPage()),
          );
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavBarStan(selectedItem: 2),
    );
  }
}
