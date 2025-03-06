import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/menu_card.dart';

class DetailKantinPage extends StatefulWidget {
  const DetailKantinPage({super.key});

  @override
  State<DetailKantinPage> createState() => _DetailKantinPageState();
}

class _DetailKantinPageState extends State<DetailKantinPage> {
  final List<Map<String, String>> makanan = [
    {
      "name": "Katsu",
      "img": "assets/images/burger.jpg",
      "price": "Rp. 10.000",
      "desc": "Burger dengan daging",
    },
    {
      "name": "Katsu11",
      "img": "assets/images/burger.jpg",
      "price": "Rp. 10.000",
      "desc": "Burger dengan daging",
    },
    {
      "name": "Katsu12",
      "img": "assets/images/burger.jpg",
      "price": "Rp. 10.000",
      "desc": "Burger dengan daging",
    },
  ];
  final List<Map<String, String>> minuman = [
    {
      "name": "Es Teh",
      "img": "assets/images/jus_semangka.jpg",
      "price": "Rp. 5.000",
      "desc": "Minuman Jus Semangka",
    },
    {
      "name": "Es Teh",
      "img": "assets/images/jus_semangka.jpg",
      "price": "Rp. 5.000",
      "desc": "Minuman Jus Semangka",
    },
    {
      "name": "Es Teh",
      "img": "assets/images/jus_semangka.jpg",
      "price": "Rp. 5.000",
      "desc": "Minuman Jus Semangka",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Stand A",
          style: GoogleFonts.nunitoSans(
            fontSize: MediaQuery.of(context).size.width * 0.055,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03,
          horizontal: MediaQuery.of(context).size.width * 0.07,
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage("assets/images/kantin.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              children: [
                Text(
                  "Makanan",
                  style: GoogleFonts.nunitoSans(
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
              child: ListView.separated(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: makanan.length,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return MenuCard(
                    name: makanan[index]["name"]!,
                    img: makanan[index]["img"]!,
                    price: makanan[index]["price"]!,
                    desc: makanan[index]["desc"]!,
                  );
                },
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Row(
              children: [
                Text(
                  "Minuman",
                  style: GoogleFonts.nunitoSans(
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
              child: ListView.separated(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: minuman.length,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return MenuCard(
                    name: minuman[index]["name"]!,
                    img: minuman[index]["img"]!,
                    price: minuman[index]["price"]!,
                    desc: minuman[index]["desc"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
