import 'package:flutter/material.dart';

class AddMenuStanPage extends StatefulWidget {
  const AddMenuStanPage({super.key});

  @override
  State<AddMenuStanPage> createState() => _AddMenuStanPageState();
}

class _AddMenuStanPageState extends State<AddMenuStanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tambahkan Menu Anda",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Batal",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Pilih Gambar Produk",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Color(0xffD9D9D9),
                        ),
                      ),
                      const SizedBox(width: 50),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Color(0xffD9D9D9),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Isi Data Produk !",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
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
                                "Nama Produk",
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
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Text(
                                "Harga Produk",
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
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "Simpan",
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
