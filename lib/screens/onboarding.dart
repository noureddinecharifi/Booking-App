import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../model/onboarding_data.dart';
import '../provider/onboarding_data_provider.dart';
import '../widgets/onborading_page.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key, required int index});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Consumer<OnboardingDataProvider>(
                builder: (context, onboardingData, _) {
                  return PageView.builder(
                    controller: _pageController,
                    itemCount: onboardDataList.length,
                    itemBuilder: (context, index) {
                      return OnBoardingPage(
                        title: onboardDataList[index].title,
                        subtitle: onboardDataList[index].subtitle,
                        imagePath: onboardDataList[index].imagePath,
                      );
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                      controller: _pageController, // PageController
                      count: 3,
                      effect: ExpandingDotsEffect(
                        dotColor: Colors.white,
                        activeDotColor: Theme.of(context).colorScheme.secondary,
                        spacing: 8.0,
                        radius: 20.0,
                        dotWidth: 12.0,
                        dotHeight: 6.0,
                      ),
                      onDotClicked: (index) {}),
                ),
              ),
              Positioned(
                top: 145,
                left: 15,
                child: InkWell(
                  onTap: () => context.go('/authpage'),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).colorScheme.secondary),
                    width: 145,
                    height: 45,
                    child: Center(child: Text('Skip', style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white, fontSize: 20),)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
