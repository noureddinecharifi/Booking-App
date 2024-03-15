import 'package:airtrip/utils/constants.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle});

  final String imagePath;
  final String subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Opacity(opacity: 0.2, child: Image.asset(mappattrn))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: 310,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: Colors.white, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 300,
                child: Text(
                  subtitle,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          child: Image.asset(
            imagePath,
            height: 600,
          ),
        ),
      ],
    );
  }
}
