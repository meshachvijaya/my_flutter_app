import 'package:flutter/material.dart';

class Alamat extends StatelessWidget {
  const Alamat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alamat Tersimpan",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF006041),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, size: 20,),
                labelText: "Cari Alamat",
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
