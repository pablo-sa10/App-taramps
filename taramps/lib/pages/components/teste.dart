import 'package:flutter/material.dart';

class SquareWidget extends StatelessWidget {
  final Color color;
  const SquareWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 10, left: 10, bottom: 30),
      child: Container(
        width: 50,
        height: 500,
        color: color,
      ),
    );
  }
}
