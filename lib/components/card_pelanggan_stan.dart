import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../pages/stan/crud/edit_pelanggan_stan_page.dart';
import '../pages/stan/data_pelanggan_stan_page.dart';

class CardPelangganStan extends StatelessWidget {
  const CardPelangganStan({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DataPelangganStanPage()),
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
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const SizedBox.shrink(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 36),
                child: Column(
                  children: [
                    Text(
                      "USER#2231",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "MUS234ER@GMAIL.COM",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.07,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditPelangganStanPage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.edit,
                          // color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.delete,
                          // color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
