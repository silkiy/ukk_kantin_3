import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/bottom_nav_bar.dart';
import '../../components/search_bar.dart';
import '../../components/stand_card.dart';

class HomePageStudent extends StatefulWidget {
  const HomePageStudent({super.key});

  @override
  State<HomePageStudent> createState() => _HomePageStudentState();
}

class _HomePageStudentState extends State<HomePageStudent> {
  final List<Map<String, String>> stands = [
    {
      "name": "Stand A",
      "img": "assets/images/kantin.jpg",
      "jamOperational": "09:00 - 12:00",
      "buka": "setiap hari",
    },
    {
      "name": "Stand B",
      "img": "assets/images/kantin.jpeg",
      "jamOperational": "09:00 - 12:00",
      "buka": "setiap hari",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.05,
            horizontal: MediaQuery.of(context).size.width * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarComponents(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Image.asset(
                "assets/images/banner1.webp",
                height: 166,
                fit: BoxFit.cover,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(
                "Pengumuman Hari Ini : ",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: stands.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return StandCard(
                      name: stands[index]["name"]!,
                      img: stands[index]["img"]!,
                      buka: stands[index]["buka"]!,
                      jamOperational: stands[index]["jamOperational"]!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedItem: 0),
    );
  }
}
