import 'package:flutter/material.dart';
import 'screen/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 66, 15, 133),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 36, 28, 92),
          centerTitle: true,
          elevation: 0,
          title: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFAEDCFF),
                  Color(0xFFB388FF),
                  Color(0xFF7B68EE),
                  Color(0xFF3D2C8D),
                ],
              ).createShader(bounds);
            },
            child: const Text(
              "วง BanG Dream ที่คุณชอบ",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ),
        body: const Item(),
      ),
    );
  }
}
