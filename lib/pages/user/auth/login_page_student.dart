// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../components/input_field.dart';
import '../home_page_student.dart';
import 'registrasi_page_student.dart';

class LoginPageStudent extends StatefulWidget {
  const LoginPageStudent({super.key});

  @override
  State<LoginPageStudent> createState() => _LoginPageStudentState();
}

class _LoginPageStudentState extends State<LoginPageStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
              const SizedBox(height: 20),
              Text(
                "Hello, Welcome back!",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.055,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Glad to see you sir.",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.055,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputField(hintText: "UserName", isPassword: false),
                    const SizedBox(height: 20),
                    InputField(hintText: "Password", isPassword: true),
                    const SizedBox(height: 20),
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
                            "Login",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(width: 25),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Pass?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Belum punya akun ? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const RegistrasiPageStudent(),
                        ),
                      );
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}

