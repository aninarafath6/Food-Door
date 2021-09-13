import 'package:flutter/material.dart';
import 'package:food_door/src/models/onboarding_model.dart';

class OnboardingProvider with ChangeNotifier {
  
  // getting the onboarding data length
  int get dataLength => onboardingData.length;

  // hart coded onboarding data
  List<OnboardingModel> onboardingData = [
    OnboardingModel(
      title: 'Discover places near you ',
      description:
          'We make it simple to find the food you crave. enter you address and let us do rest.',
      image: 'assets/images/onboarding_images/onboarding_image-1.png',
    ),
    OnboardingModel(
      title: 'Order you favorite ',
      description:
          'When you order eat street, we will hook you up with exclusive coupons , special sand rewards.',
      image: 'assets/images/onboarding_images/onboarding_image-2.png',
    ),
    OnboardingModel(
      title: 'Fastest Delivery ',
      description:
          'We make food ordering fast, simple and free-no matter if you order online cash.',
      image: 'assets/images/onboarding_images/onboarding_image-3.png',
    ),
  ];
}
