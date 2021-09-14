import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_door/src/models/onboarding_model.dart';

class OnboardingProvider with ChangeNotifier {
  // duration
  // getting the onboarding data length
  int get dataLength => onboardingData.length;

  // page controller
  final PageController pageController = PageController();

  // current page
  int currentPage = 0;

  // is last page
  bool get isLastPage =>  dataLength - 1 ==currentPage;

  // next page
  void nextPage() {
    if (currentPage == dataLength - 1) {
      // go to home screen
    } else {
      // changing page to next
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    notifyListeners();
  }

  // skip page
  void skipPage() {
    pageController.animateToPage(
      dataLength - 1,
      duration: const Duration(milliseconds: 200),
      curve: Curves.decelerate,
    );
    notifyListeners();
  }

  // change page
  void changePage(int index) {
    currentPage = index;
    notifyListeners();
  }

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
