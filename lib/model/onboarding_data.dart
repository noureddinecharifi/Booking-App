class OnboardingData {
  final String title;
  final String subtitle;
  final String imagePath;

  OnboardingData({required this.title, required this.subtitle,required this.imagePath});
}

List<OnboardingData> onboardDataList = [
  OnboardingData(
    title: "Discover and Reserve Your Next Adventure",
    subtitle: "Elevate Your Travel Experience with Seamless Booking Solutions.",
    imagePath: "assets/images/onboardingImage.png",
  ),
  OnboardingData(
    title: "Explore and Reserve Your Dream Getaway",
    subtitle: "Rediscover the Joy of Traveling Post-Pandemic",
    imagePath: "assets/images/travelongoing.png"
  ),
  OnboardingData(
    title: "Search and Book Your Next Escape",
    subtitle: "Embark on Unforgettable Journeys with Confidence.",
    imagePath: "assets/images/travelrun.png"
  ),
];
