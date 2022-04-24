import 'package:get/get.dart';
import 'package:poc_artivatic/navigation/routes.dart';

import '../screens/screen_values.dart';

class AppPages {

  static final pages = [
    GetPage(name: Routes.initial, page: () => const SplashScreen()),
    GetPage(name: Routes.detailsAndListing, page: () => const DetailsAndListingScreen()),
  ];

}