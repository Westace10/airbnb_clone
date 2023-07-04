import 'package:airbnb_flutter/app/ui/views/startup/startup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class StartUpPage extends StatelessWidget {
  const StartUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StartUpController>(builder: (controller) {
      return Scaffold(
        body: Center(
          child: controller.isLoading
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 100),
                    SvgPicture.asset("assets/svg/wandericon.svg", height: 70),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: SvgPicture.asset("assets/svg/wandertrip.svg",
                          height: 40),
                    ),
                  ],
                )
              : SvgPicture.asset("assets/svg/wandertripfull.svg", height: 100),
        ),
      );
    });
  }
}
