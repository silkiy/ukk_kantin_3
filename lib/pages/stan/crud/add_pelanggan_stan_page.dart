import 'package:flutter/material.dart';

class AddPelangganStanPage extends StatefulWidget {
  const AddPelangganStanPage({super.key});

  @override
  State<AddPelangganStanPage> createState() => _AddPelangganStanPageState();
}

class _AddPelangganStanPageState extends State<AddPelangganStanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              color: Color(0xffD9D9D9),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Create Data",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Text(
                          "TAMBAH",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0043A7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffD9D9D9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Isi Data Yang Diperlukan",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.035,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Color(0xff66786A),
                              ),
                              child: Center(
                                child: Text(
                                  "Pilih Gambar",
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                        0.04,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
