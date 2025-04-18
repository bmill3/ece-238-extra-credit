import 'package:flutter/material.dart';

void main() {
  runApp(const RippleAdderApp());
}

class RippleAdderApp extends StatelessWidget {
  const RippleAdderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ripple-Carry Adder',
      debugShowCheckedModeBanner: false,
      home: const RippleAdderPage(),
    );
  }
}

class RippleAdderPage extends StatelessWidget {
  const RippleAdderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text(
            '4-Bit Ripple-Carry Adder',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Container(
              width: 160, // doubled from 80
              height: 160, // doubled from 80
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ), // doubled from 12
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400, width: 2),
                // no borderRadius for sharp edges
              ),
            );
          }),
        ),
      ),
    );
  }
}
