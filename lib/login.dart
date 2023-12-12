import 'package:flutter/material.dart';
import 'package:my_flutter_app/home.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf4f2ef),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  "Welcome to J Coffee Shop",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF006041)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Username",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Home();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xFF006041),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
