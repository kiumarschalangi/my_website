// import 'dart:html' as html;

import 'package:flutter/material.dart';

class SocialMediaIconButton extends StatelessWidget {
  const SocialMediaIconButton({
    super.key,
    required this.url,
    required this.name,
    required this.imagePath,
  });
  final String url;
  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // html.window.open(url, name);
      },
      child: Image.asset(
        imagePath,
        color: const Color(0xFF45405B),
        height: 20.0,
        width: 20.0,
      ),
    );
  }
}
