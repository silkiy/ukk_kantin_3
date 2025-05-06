import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UbahStatusPage extends StatefulWidget {
  const UbahStatusPage({super.key});

  @override
  State<UbahStatusPage> createState() => _UbahStatusPageState();
}

class _UbahStatusPageState extends State<UbahStatusPage> {
  String selectedStatus = "DALAM PROSES";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Detail Transaksi",
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.055,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Simpan",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0043A7),
                ),
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.03,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xffD9D9D9),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PESANAN #002",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Pelanggan : USER1229",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        "Date  : 12-12-2027",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        "Kantin : Kantin A",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Diskon : Rp. 10,000.",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Text(
                  "TOTAL :  Rp.19,900.",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffB2B2B2),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedStatus,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          dropdownColor: Color(0xffB2B2B2),
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.035,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedStatus = newValue!;
                            });
                          },
                          items:
                              <String>[
                                "DALAM PROSES",
                                "SEDANG DIANTAR",
                                "PESEANAN DITERIMA",
                                "SELESAI",
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
