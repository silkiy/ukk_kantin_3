import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/card_user_checkout.dart';
import '../../helpers/checkout_database_helper.dart';

class CheckoutPage extends StatefulWidget {
  final List<Map<String, dynamic>> selectedMenu;
  const CheckoutPage({super.key, required this.selectedMenu});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  late List<Map<String, dynamic>> _menuList;
  String selectedDiscount = "0%";

  double hitungTotalHarga() {
    double total = 0;
    for (var item in _menuList) {
      final qty = item['quantity'] ?? 1;
      final priceString = item['price'].toString().replaceAll(
        RegExp(r'[^0-9]'),
        '',
      );
      final price = int.tryParse(priceString) ?? 0;
      total += qty * price;
    }
    return total;
  }

  double hitungTotalSetelahDiskon() {
    double diskon = double.parse(selectedDiscount.replaceAll("%", "")) / 100;
    return hitungTotalHarga() * (1 - diskon);
  }

  @override
  void initState() {
    super.initState();
    _menuList = List<Map<String, dynamic>>.from(widget.selectedMenu);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        elevation: 0,
        title: Text(
          "Check Out",
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.055,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.05,
            horizontal: MediaQuery.of(context).size.width * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardUserCheckout(),
              SizedBox(height: 40),
              Text(
                "Detail Pesanan",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              ..._menuList.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final qty = item['quantity'] ?? 1;
                final priceString = item['price'].toString().replaceAll(
                  RegExp(r'[^0-9]'),
                  '',
                );
                final price = int.tryParse(priceString) ?? 0;
                final total = qty * price;

                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "${item['name']}",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    "x$qty • Rp. $price",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Rp. $total",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            _menuList.removeAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                );
              }).toList(),
              SizedBox(height: 20),

              // Total awal
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "TOTAL :   Rp. ${hitungTotalHarga().toStringAsFixed(0)}",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Dropdown diskon
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xffD9D9D9),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pilih Diskon:",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      DropdownButton<String>(
                        value: selectedDiscount,
                        items:
                            ["0%", "10%", "20%", "30%", "50%"].map((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                        0.035,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedDiscount = newValue!;
                            print("Diskon yang dipilih: $selectedDiscount");
                          });
                        },
                        underline: SizedBox(),
                        icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total: Rp. ${hitungTotalSetelahDiskon().toStringAsFixed(0)}",
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.045,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () async {
                if (_menuList.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tidak ada menu yang dipilih!')),
                  );
                  return;
                }

                print("Diskon yang dipilih sebelum checkout: $selectedDiscount");
                final orderNumber =
                    'ORD${DateTime.now().millisecondsSinceEpoch}';

                for (var item in _menuList) {
                  final qty = item['quantity'] ?? 1;
                  final priceString = item['price'].toString().replaceAll(
                    RegExp(r'[^0-9]'),
                    '',
                  );
                  final price = int.tryParse(priceString) ?? 0;
                  final total = qty * price;

                  Map<String, dynamic> checkoutData = {
                    'noPesanan': orderNumber,
                    'itemName': item['name'], // Gunakan nama dari item
                    'quantity': qty,
                    'price': price, // Kirim harga per item
                    'totalPrice': total, // Kirim total per item (harga * qty)
                    'discount': selectedDiscount, // Kirim diskon yang dipilih
                    'status': 'Pesanan diproses',
                  };

                  await DatabaseHelper.instance.insertCheckoutData(
                    checkoutData,
                  );
                  print("Diskon: $selectedDiscount");
                }

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Checkout berhasil disimpan!')),
                );
              },
              child: Text(
                "CHECKOUT",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
