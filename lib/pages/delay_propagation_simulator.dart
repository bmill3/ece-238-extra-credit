import 'package:flutter/material.dart';

class DelayPropagationSimulator extends StatelessWidget {
  const DelayPropagationSimulator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Delay Propagation Simulator',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Center(
        child: Text(
          'Ripple‐carry delay animation goes here',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
