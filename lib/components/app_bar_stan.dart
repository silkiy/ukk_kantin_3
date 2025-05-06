import 'package:flutter/material.dart';

import '../pages/stan/history_penjualan_page.dart';

class AppBarStan extends StatelessWidget {
  const AppBarStan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      color: Color(0xffD9D9D9),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pesanan",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.055,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HistoryPenjualanPage()),
                  );
                },
                icon: const Icon(Icons.history),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
