import 'package:flutter/material.dart';

class FeaturedText extends StatelessWidget {
  final String text;
  const FeaturedText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }
}
