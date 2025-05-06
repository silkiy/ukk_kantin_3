import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDetailPesananCheckout extends StatelessWidget {
  const CardDetailPesananCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xffD9D9D9),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "DETAIL PESANAN",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(thickness: 1, color: Colors.black),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nasi Goyeng",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "2",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "25,000",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(thickness: 1, color: Colors.black),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ES Goyeng",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "1",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "4,900",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(thickness: 1, color: Colors.black),
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
