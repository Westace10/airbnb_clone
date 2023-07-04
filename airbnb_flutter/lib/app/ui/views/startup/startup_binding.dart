import 'package:airbnb_flutter/app/ui/views/startup/startup_controller.dart';
import 'package:get/get.dart';

class StartUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartUpController());
  }
}
