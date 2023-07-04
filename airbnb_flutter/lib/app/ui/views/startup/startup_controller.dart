import 'package:get/get.dart';

class StartUpController extends GetxController {
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    fetchMovieDetails();
  }

  void fetchMovieDetails() async {
    await Future.delayed(const Duration(seconds: 10)).then(
      (value) {
        isLoading = false;
        update();
      },
    );
  }
}
