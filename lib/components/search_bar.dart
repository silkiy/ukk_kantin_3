import 'package:flutter/material.dart';

class SearchBarComponents extends StatelessWidget {
  const SearchBarComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: const Color(0xff757575),
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          labelText: 'Mau Makan Dimana',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          fillColor: Color(0xffD9D9D9)
        ),
      ),
    );
  }
}
