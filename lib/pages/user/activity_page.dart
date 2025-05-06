import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/bottom_nav_bar.dart';
import '../../components/card_activity.dart';
import '../../helpers/checkout_database_helper.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  String selectedBulan = "Jan";

  List<Map<String, dynamic>> activity = [];
  @override
  void initState() {
    super.initState();
    _loadCheckoutData();
  }

  // Function to load data from the database
  Future<void> _loadCheckoutData() async {
    final data = await DatabaseHelper.instance.getCheckoutData();
    setState(() {
      activity = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Aktivitas",
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.055,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xffD9D9D9),
                    ),
                    child: Center(
                      child: Text(
                        "Berlangsung",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xffD9D9D9),
                    ),
                    child: Center(
                      child: Text(
                        "History",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
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
              height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: activity.length,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return CardActivity(
                    noPesanan: activity[index]["noPesanan"].toString(),
                    noKantin: activity[index]["noKantin"].toString(),
                    status: activity[index]["status"].toString(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedItem: 1),
    );
  }
}
