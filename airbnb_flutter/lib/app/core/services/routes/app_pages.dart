import 'package:airbnb_flutter/app/ui/views/startup/startup_binding.dart';
import 'package:airbnb_flutter/app/ui/views/startup/startup_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.startup,
      page: () => const StartUpPage(),
      binding: StartUpBinding(),
    ),
  ];
}
