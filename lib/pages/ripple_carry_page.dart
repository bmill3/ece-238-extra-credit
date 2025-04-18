import 'package:flutter/material.dart';

class RippleCarryPage extends StatelessWidget {
  const RippleCarryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          '4‑Bit Ripple‑Carry Adder',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // TOP: two triangles moved straight down over each stick
                  SizedBox(
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Transform.translate(
                              offset: const Offset(0, 81),
                              child: const DownwardTriangle(),
                            ),
                            const VerticalStick(),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Transform.translate(
                              offset: const Offset(0, 81),
                              child: const DownwardTriangle(),
                            ),
                            const VerticalStick(),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Conditionally exclude the horizontal stick for the first column
                  if (index != 0)
                    Transform.translate(
                      offset: const Offset(-112, 80), // Keep the same offset
                      child: Stack(
                        clipBehavior: Clip.none, // Ensure nothing is clipped
                        alignment: Alignment.centerLeft,
                        children: [
                          // Horizontal stick
                          Container(
                            width: 64, // match your box width
                            height: 2, // thickness of the stick
                            color: Colors.grey.shade300,
                          ),
                          // Leftward-facing triangle on top of the stick
                          const Positioned(
                            left:
                                -3, // Adjust this value to ensure the triangle is visible
                            child: LeftwardTriangle(),
                          ),
                        ],
                      ),
                    ),

                  // The Squares
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      border: Border.all(color: Colors.grey.shade700, width: 2),
                    ),
                  ),
                  // Bottom stick + triangle (unchanged)
                  const VerticalStick(),
                  const DownwardTriangle(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class VerticalStick extends StatelessWidget {
  const VerticalStick({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 2, height: 80, color: Colors.grey.shade300);
  }
}

class DownwardTriangle extends StatelessWidget {
  const DownwardTriangle({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _DownTriangleClipper(),
      child: Container(width: 16, height: 8, color: Colors.grey.shade300),
    );
  }
}

class _DownTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width / 2, size.height)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> old) => false;
}

class LeftwardTriangle extends StatelessWidget {
  const LeftwardTriangle({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _LeftTriangleClipper(),
      child: Container(
        width: 9,
        height: 16,
        color: Colors.grey.shade300,
      ), // Increased base, reduced height
    );
  }
}

class _LeftTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(size.width, 0) // Start at the top-right corner
      ..lineTo(0, size.height / 2) // Draw to the middle-left
      ..lineTo(size.width, size.height) // Draw to the bottom-right corner
      ..close(); // Close the path
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
