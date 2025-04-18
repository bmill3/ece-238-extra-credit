import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/ripple_carry_page.dart';
import 'pages/gate_level_page.dart';
import 'pages/delay_propagation_simulator.dart';
import 'pages/interactive_page.dart';

void main() {
  runApp(const RippleAdderApp());
}

class RippleAdderApp extends StatelessWidget {
  const RippleAdderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ripple‑Carry Adder',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (c) => const HomePage(),
        '/ripple': (c) => const RippleCarryPage(),
        '/gates': (c) => const GateLevelPage(),
        '/delay': (c) => const DelayPropagationSimulator(),
        '/interactive': (c) => const InteractivePage(),
      },
    );
  }
}
