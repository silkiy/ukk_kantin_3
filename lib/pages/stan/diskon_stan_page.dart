import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'crud/add_diskon_stan_page.dart';
import 'crud/edit_diskon_stan_page.dart';

class DiskonStanPage extends StatefulWidget {
  const DiskonStanPage({super.key});

  @override
  State<DiskonStanPage> createState() => _DiskonStanPageState();
}

class _DiskonStanPageState extends State<DiskonStanPage> {
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
                            "Kelola Diskon",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddDiskonStanPage(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.add_circle_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff666666),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount 1",
                                style: GoogleFonts.poppins(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.035,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Nom : RP. 12,000",
                                style: GoogleFonts.poppins(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.035,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "EXP : 02-12-2027",
                                style: GoogleFonts.poppins(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.035,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Pro : ALL",
                                style: GoogleFonts.poppins(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.035,
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
                                      builder: (context) =>
                                          const EditDiskonStanPage(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
