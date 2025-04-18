import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          '4‑Bit Ripple‑Carry Adder',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/ripple'),
            child: const Text(
              'Ripple View',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/gates'),
            child: const Text(
              'Logic Gates',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/delay'),
            child: const Text(
              'Delay Sim',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/interactive'),
            child: const Text(
              'Interactive',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Main Ripple‑Carry Adder Visual Here',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
