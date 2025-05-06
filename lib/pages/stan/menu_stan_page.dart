import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'crud/add_menu_stan_page.dart';
import 'crud/edit_menu_stan_page.dart';


class MenuStanPage extends StatefulWidget {
  const MenuStanPage({super.key});

  @override
  State<MenuStanPage> createState() => _MenuStanPageState();
}

class _MenuStanPageState extends State<MenuStanPage> {
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
                            "Kelola Menu",
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
                              builder: (context) => const AddMenuStanPage(),
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
            SizedBox(height: 20),
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
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "ES Goyeng",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.035,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 120.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                              ),
                              child: const SizedBox.shrink(),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 36),
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "RP. 12,000",
                                style: GoogleFonts.poppins(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
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
                                      builder: (context) => const EditMenuStanPage(),
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
