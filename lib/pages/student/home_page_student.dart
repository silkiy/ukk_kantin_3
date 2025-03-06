import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/search_bar.dart';
import '../../components/stand_card.dart';

class HomePageStudent extends StatefulWidget {
  const HomePageStudent({super.key});

  @override
  State<HomePageStudent> createState() => _HomePageStudentState();
}

class _HomePageStudentState extends State<HomePageStudent> {
  final List<Map<String, String>> stands = [
    {"name": "Stand A", "img": "assets/images/kantin.jpeg"},
    {"name": "Stand A", "img": "assets/images/kantin.jpeg"},
    {"name": "Stand A", "img": "assets/images/kantin.jpeg"},
    {"name": "Stand A", "img": "assets/images/kantin.jpeg"},
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
            children: [
              Container(
                height: 166,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/kantin_smk_telkom.webp"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SearchBarComponents(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Text(
                    "Pilih Stan",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: stands.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return StandCard(
                      name: stands[index]["name"]!,
                      img: stands[index]["img"]!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
