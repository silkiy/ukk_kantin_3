import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/bottom_nav_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.05,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        // leading: null,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.03),
            Center(
              child: CircleAvatar(
                radius: screenWidth * 0.18,
                backgroundImage: AssetImage('assets/profile_placeholder.png'),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              "Nama Pengguna",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.045,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Text(
              "user@example.com",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.035,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            _buildProfileOption("Edit Profile", Icons.edit),
            _buildProfileOption("Pengaturan", Icons.settings),
            _buildProfileOption("Bantuan", Icons.help_outline),
            _buildProfileOption("Keluar", Icons.logout, isLogout: true),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedItem: 2),
    );
  }

  Widget _buildProfileOption(
    String title,
    IconData icon, {
    bool isLogout = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
            color: isLogout ? Colors.redAccent.withOpacity(0.1) : Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, color: isLogout ? Colors.redAccent : Colors.black),
                  SizedBox(width: 15),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      color: isLogout ? Colors.redAccent : Colors.black,
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
