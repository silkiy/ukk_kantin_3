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
              color: const Color.fromRGBO(55, 79, 107, 1),
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          labelText: 'Cari stan kamu disini',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
