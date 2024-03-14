import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final String imagePath;

  const OnBoardingPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        width: 500,
        imagePath,
      ),
    );
  }
}
