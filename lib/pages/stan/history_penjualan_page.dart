import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/card_history_stan.dart';

class HistoryPenjualanPage extends StatefulWidget {
  const HistoryPenjualanPage({super.key});

  @override
  State<HistoryPenjualanPage> createState() => _HistoryPenjualanPageState();
}

class _HistoryPenjualanPageState extends State<HistoryPenjualanPage> {
  final List<Map<String, String>> activity = [
    {"noPesanan": "002", "noKantin": "1", "status": "Pesanan selesai"},
    {"noPesanan": "018", "noKantin": "5", "status": "Pesanan diterima"},
    {"noPesanan": "098", "noKantin": "2", "status": "Pesanan diproses"},
  ];
  String selectedBulan = "Jan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        elevation: 0,
        title: Text(
          "History",
          style: GoogleFonts.poppins(
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.05,
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                            "TOTAL PENDAPATAN BULAN INI : ",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.035,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "RP. 18,998,000,-",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.035,
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
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xffD9D9D9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bulan:",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    DropdownButton<String>(
                      value: selectedBulan,
                      items:
                          [
                            "Jan",
                            "Feb",
                            "Mar",
                            "Apr",
                            "Mei",
                            "Jun",
                            "Jul",
                            "Aug",
                            "Sep",
                            "Oct",
                            "Nov",
                            "Dec",
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: GoogleFonts.poppins(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.035,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBulan = newValue!;
                        });
                      },
                      underline: SizedBox(),
                      icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height:
                    MediaQuery.of(context).size.height *
                    0.5, // atau tinggi sesuai kebutuhan
                child: ListView.separated(
                  itemCount: activity.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return CardHistoryStan(
                      noPesanan: activity[index]["noPesanan"]!,
                      noKantin: activity[index]["noKantin"]!,
                      status: activity[index]["status"]!,
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
