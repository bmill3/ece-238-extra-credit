import 'package:flutter/material.dart';

class InteractivePage extends StatelessWidget {
  const InteractivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Interactive Input Panel',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Center(
        child: Text(
          'Binary input & truth table UI goes here',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
