import 'package:airtrip/utils/constants.dart';
import 'package:airtrip/widgets/onborading_page.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          OnBoardingPage(
            imagePath: onboardingImage,
          )
        ],
      ),
    );
  }
}
