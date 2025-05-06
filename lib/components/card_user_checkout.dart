import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardUserCheckout extends StatelessWidget {
  const CardUserCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xffD9D9D9),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Pelanggan :",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    " USER1229",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Kantin :",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    " Kantin A",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
