import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/menu_item.dart';

class DetailTransaksiPage extends StatelessWidget {
  final String noPesanan;
  final List<MenuItem> items;
  final int diskon;
  final String status;

  const DetailTransaksiPage({
    super.key,
    required this.noPesanan,
    required this.items,
    required this.diskon,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // Menghitung total harga sebelum diskon
    int totalHarga = items.fold(
      0,
      (sum, item) => sum + (item.harga * item.jumlah),
    );

    // Menghitung total setelah diskon
    int totalBayar = totalHarga - diskon;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffD9D9D9),
        elevation: 0,
        title: Text(
          "Detail Transaksi",
          style: GoogleFonts.poppins(
            fontSize: width * 0.055,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffD9D9D9),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PESANAN #$noPesanan",
                style: GoogleFonts.poppins(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "DETAIL PESANAN",
                style: GoogleFonts.poppins(
                  fontSize: width * 0.045,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Divider(thickness: 1),
              // Menampilkan item secara dinamis
              ...items.map(
                (item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.nama,
                        style: GoogleFonts.poppins(fontSize: width * 0.035),
                      ),
                      Text(
                        "${item.jumlah}",
                        style: GoogleFonts.poppins(fontSize: width * 0.035),
                      ),
                      Text(
                        "Rp. ${item.harga}",
                        style: GoogleFonts.poppins(fontSize: width * 0.035),
                      ), // Tampilkan harga per item
                    ],
                  ),
                ),
              ),
              const Divider(thickness: 1),
              // Menampilkan harga total sebelum diskon
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total Sebelum Diskon : Rp. $totalHarga",
                    style: GoogleFonts.poppins(
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Menampilkan diskon
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Diskon : Rp. $diskon",
                    style: GoogleFonts.poppins(
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Total harga setelah diskon
              Text(
                "TOTAL SETELAH DISKON : Rp. $totalBayar",
                style: GoogleFonts.poppins(
                  fontSize: width * 0.045,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 20),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffB2B2B2),
                  ),
                  child: Text(
                    status.toUpperCase(),
                    style: GoogleFonts.poppins(
                      fontSize: width * 0.035,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
