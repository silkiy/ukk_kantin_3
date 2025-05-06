import 'package:flutter/material.dart';

import '../../components/app_bar_stan.dart';
import '../../components/bottom_nav_bar_stan.dart';
import '../../components/card_recap_stan.dart';

class RecapPenjualanPage extends StatefulWidget {
  const RecapPenjualanPage({super.key});

  @override
  State<RecapPenjualanPage> createState() => _RecapPenjualanPageState();
}

class _RecapPenjualanPageState extends State<RecapPenjualanPage> {
  final List<Map<String, String>> activity = [
    {"noPesanan": "002", "noKantin": "1", "status": "Pesanan selesai"},
    {"noPesanan": "018", "noKantin": "5", "status": "Pesanan diterima"},
    {"noPesanan": "098", "noKantin": "2", "status": "Pesanan diproses"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            AppBarStan(),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ListView.separated(
                  itemCount: activity.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return CardRecapStan(
                      noPesanan: activity[index]["noPesanan"]!,
                      noKantin: activity[index]["noKantin"]!,
                      status: activity[index]["status"]!,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarStan(selectedItem: 1),
    );
  }
}
