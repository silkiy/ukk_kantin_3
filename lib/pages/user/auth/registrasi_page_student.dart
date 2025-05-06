import 'package:flutter/material.dart';

import '../../../components/input_field.dart';
import '../home_page_student.dart';

class RegistrasiPageStudent extends StatefulWidget {
  const RegistrasiPageStudent({super.key});

  @override
  State<RegistrasiPageStudent> createState() => _RegistrasiPageStudentState();
}

class _RegistrasiPageStudentState extends State<RegistrasiPageStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left),
                iconSize: 40.0,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Row(
                children: [
                  SizedBox(width: 25),
                  Text(
                    "Hello, Welcome !",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(width: 25),
                  Text(
                    "Please register",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const InputField(hintText: "Nama", isPassword: false),
              const SizedBox(height: 10),
              const InputField(hintText: "Alamat", isPassword: false),
              const SizedBox(height: 10),
              const InputField(hintText: "Telepon", isPassword: false),
              const SizedBox(height: 10),
              const InputField(hintText: "Username", isPassword: false),
              const SizedBox(height: 10),
              const InputField(hintText: "Password", isPassword: true),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 32,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Icon(Icons.add_a_photo, color: Colors.black),
                  ),
                  Text("No File Chose", style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomePageStudent(),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Sign UP",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
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
      ),
    );
  }
}
