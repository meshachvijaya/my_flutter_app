import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF006041),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: Image.network(
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Hello Joshua",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                    child: Text("Alamat"),
                  ),
                  SizedBox(height: 20),
                  Text("Pembayaran"),
                  SizedBox(height: 20),
                  Text("Pusat Bantuan"),
                  SizedBox(height: 20),
                  Text("Pengaturan"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
