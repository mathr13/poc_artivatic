import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigation/navigation_values.dart';

class ArtivaticApp extends StatelessWidget {
  const ArtivaticApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initial,
      getPages: AppPages.pages,
    );
  }
}