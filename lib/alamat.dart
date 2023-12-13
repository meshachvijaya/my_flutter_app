import 'package:flutter/material.dart';

class Alamat extends StatelessWidget {
  const Alamat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Alamat Tersimpan",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF006041),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    labelText: "Cari Alamat",
                    labelStyle: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                color: Colors.grey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Kantor",
                          style: TextStyle(
                              color: Color(0xFF006041),
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF006041),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            "UTAMA",
                            style: TextStyle(
                                color: Color(0xFF006041), fontSize: 9),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Ubah",
                          style:
                              TextStyle(color: Color(0xFF006041), fontSize: 11),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Text("1.32 km"),
                        Text("dari store"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Expanded(
                            child: Text(
                                "Jl. BSD Boulevard Utara No. 2, Lengkong Kulon, Tangerang",
                                softWrap: true))
                      ],
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text("KIRIM KE SINI"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
