import 'package:airbnb_flutter/app/ui/views/startup/startup_binding.dart';
import 'package:airbnb_flutter/app/ui/views/startup/startup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/core/services/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      // theme: ThemeColor().themeData,
      home: const StartUpPage(),
      initialBinding: StartUpBinding(),
      getPages: AppPages.pages,
    );
  }
}
