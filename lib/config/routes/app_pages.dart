import 'package:get/get.dart';
import 'package:meet_singles/App/BottomNavBar/view/bottom_nav_bar.dart';

import '../../App/Authentication/view/onboarding_screen.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static String initial = "/unboarding/";

  static final pages = [
    GetPage(
      name: initial,
      page: () => const OnboardingScreen(),
      // binding: SplashBinding(),
    ),
 
    GetPage(
      name: Routes.navBarView,
      page: () => const BottomNavBar(),
      // binding: HomeBindings(),
    ),
 
  ];
}
