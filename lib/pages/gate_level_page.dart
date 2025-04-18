import 'package:flutter/material.dart';

class GateLevelPage extends StatelessWidget {
  const GateLevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Full Adder Logic Gates',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Center(
        child: Text(
          'Gate‐level full‐adder view goes here',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
