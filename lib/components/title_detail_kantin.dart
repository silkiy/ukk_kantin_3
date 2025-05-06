import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleDetailKantin extends StatelessWidget {
  const TitleDetailKantin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "DETAIL :",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.001),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "JAM BUKA :",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  " 18.00-06.00",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "HARI BUKA :",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  " SENIN - JUMAT",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Row(
            children: [
              Text(
                "MENU :",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}