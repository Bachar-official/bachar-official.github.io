import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String text;
  final Color? color;
  const Tag({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3.0),
      decoration: BoxDecoration(
        color: color ?? Colors.green,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
