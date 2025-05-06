import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helpers/checkout_database_helper.dart';
import '../models/menu_item.dart';
import '../pages/user/detail_transaksi_page.dart';

class CardActivity extends StatelessWidget {
  final String noPesanan;
  final String noKantin;
  final String status;

  const CardActivity({
    super.key,
    required this.noPesanan,
    required this.noKantin,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final dbHelper = DatabaseHelper.instance;
        // Fetch checkout data from the database based on noPesanan
        final List<Map<String, dynamic>> data = await dbHelper
            .getCheckoutByNoPesanan(noPesanan);

        if (data.isNotEmpty) {
          // Convert the fetched data into MenuItem objects
          List<MenuItem> items =
              data.map((item) => MenuItem.fromMap(item)).toList();

          // Extract discount and status from the first entry
          int diskon =
              int.tryParse(
                data.first['discount'].toString().replaceAll('%', ''),
              ) ??
              0;
          String status = data.first['status'] ?? 'Pesanan diproses';

          // Navigate to DetailTransaksiPage with the fetched data
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => DetailTransaksiPage(
                    noPesanan: noPesanan,
                    items: items,
                    diskon: diskon,
                    status: status,
                  ),
            ),
          );
          print("Diskon: $diskon");
        } else {
          // Show an error message if no data is found for the given noPesanan
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Data pesanan #$noPesanan tidak ditemukan')),
          );
        }
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16, // Dynamic height
        width: MediaQuery.of(context).size.width, // Full width of the screen
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0), // Padding inside the card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PESANAN #$noPesanan",
                style: GoogleFonts.poppins(
                  fontSize:
                      MediaQuery.of(context).size.width *
                      0.05, // Responsive font size
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Kantin $noKantin",
                style: GoogleFonts.poppins(
                  fontSize:
                      MediaQuery.of(context).size.width *
                      0.04, // Responsive font size
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                status, // Display the status of the order
                style: GoogleFonts.poppins(
                  fontSize:
                      MediaQuery.of(context).size.width *
                      0.045, // Responsive font size
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
