import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/card_menu.dart';
import '../../components/title_detail_kantin.dart';
import 'checkout_page.dart';

class DetailKantinPage extends StatefulWidget {
  const DetailKantinPage({super.key});

  @override
  State<DetailKantinPage> createState() => _DetailKantinPageState();
}

class _DetailKantinPageState extends State<DetailKantinPage> {

  List<Map<String, dynamic>> selectedMenu = [];

  final List<Map<String, String>> menu = [
    {
      "name": "Jus Melon",
      "img": "assets/images/Jus_Melon.jpg",
      "price": "Rp. 3.000",
    },
    {
      "name": "Burger",
      "img": "assets/images/burger.jpg",
      "price": "Rp. 10.000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        elevation: 0,
        title: Text(
          "Kantin 1",
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
                    image: AssetImage("assets/images/kantin.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              TitleDetailKantin(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: menu.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final item = menu[index];
                    return CardMenu(
                      name: menu[index]["name"]!,
                      img: menu[index]["img"]!,
                      price: menu[index]["price"]!,
                      onQuantityChanged: (qty) {
                        setState(() {
                          final existingIndex = selectedMenu.indexWhere(
                            (e) => e['name'] == item['name'],
                          );

                          if (existingIndex != -1) {
                            selectedMenu[existingIndex]['quantity'] = qty;
                          } else {
                            selectedMenu.add({
                              'name': item['name'],
                              'img': item['img'],
                              'price': item['price'],
                              'quantity': qty,
                            });
                          }
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffD9D9D9),
        shape: CircleBorder(),
        // tooltip: 'Increment',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheckoutPage(
              selectedMenu: selectedMenu
            )),
          );
        },
        child: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
          size: 28,
        ),
      ),
    );
  }
}
