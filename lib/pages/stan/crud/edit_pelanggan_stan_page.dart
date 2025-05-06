import 'package:flutter/material.dart';

class EditPelangganStanPage extends StatefulWidget {
  const EditPelangganStanPage({super.key});

  @override
  State<EditPelangganStanPage> createState() => _EditPelangganStanPageState();
}

class _EditPelangganStanPageState extends State<EditPelangganStanPage> {
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
                            "Ubah Data Pelanggan",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "SIMPAN",
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
                      const SizedBox(height: 5),
                      Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.input,
                          color: Colors.black,
                          size: 50,
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
