import 'package:flutter/material.dart';
import 'package:pas_flutter/components/profile_row.dart';


class ProfilePage3 extends StatelessWidget {
  const ProfilePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 82,
            backgroundColor: Color(0xFFD0D3DA),
            backgroundImage: AssetImage("assets/Profil.jpeg"),
          ),
          SizedBox(height: 16),
          SizedBox(height: 36),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                ProfileRow(label: "Name", value: "Miftakhul Rizq Hisyam"),
                Divider(height: 1, color: Colors.white),
                ProfileRow(
                  label: "Absen",
                  value: "25",
                  valueHijau: true,
                ),
                Divider(height: 1, color: Color(0xFFE5E5E5)),
                ProfileRow(label: "Bio", value: "Siswa 11 PPLG"),
              ],
            ),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
