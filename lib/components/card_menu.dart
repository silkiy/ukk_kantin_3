import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMenu extends StatefulWidget {
  final String name;
  final String price;
  final String img;
  final Function(int quantity) onQuantityChanged;
  const CardMenu({
    super.key,
    required this.name,
    required this.price,
    required this.img,
    required this.onQuantityChanged,
  });

  @override
  State<CardMenu> createState() => _CardMenuState();
}

class _CardMenuState extends State<CardMenu> {
  int quantity = 0;

  void _increment() {
  setState(() {
    quantity++;
  });
  widget.onQuantityChanged(quantity);
}

void _decrement() {
  if (quantity > 1) {
    setState(() {
      quantity--;
    });
    widget.onQuantityChanged(quantity);
  }
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xff1E1E1E),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      widget.name,
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(widget.img),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // SizedBox(width: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      children: [
                        Text(
                          widget.price,
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: _decrement,
                              child: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Color(0xff323232),
                                  size: 20,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(
                              "$quantity",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 12),
                            GestureDetector(
                              onTap: _increment,
                              child: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xff323232),
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
