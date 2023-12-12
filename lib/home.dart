import 'package:flutter/material.dart';
import 'package:my_flutter_app/payment.dart';
import 'package:my_flutter_app/profile.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String yourName = "Joshua";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome $yourName",
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF006041),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Profile();
                }));
              },
              icon: const Icon(
                Icons.person_rounded,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/banner.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Exclusive Promo",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage("assets/promo1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage("assets/promo2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Voucher",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Stack(
            children: [
              Positioned.fill(
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 10),
                      width: 40,
                      height: 40,
                      child: const Image(
                        image: AssetImage("assets/wa.png"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Customer Service(Chat Only)",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "0822 9733 7639",
                            style: TextStyle(
                              color: Color(0xFF006041),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Payment();
                }));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF006041),
                ),
              ),
              child: const Text(
                "Pay with QRIS",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
