import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/stan/ubah_status_page.dart';

class CardRecapStan extends StatelessWidget {
  final String noPesanan;
  final String noKantin;
  final String status;

  const CardRecapStan({
    super.key,
    required this.noPesanan,
    required this.noKantin,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UbahStatusPage()),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PESANAN #$noPesanan",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Kantin $noKantin",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                status,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
