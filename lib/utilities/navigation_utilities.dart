import 'package:get/get.dart';

import '../navigation/navigation_values.dart';

class NavigationUtilities {
  
  void waitAndNavigate(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(Routes.detailsAndListing);
  }

}