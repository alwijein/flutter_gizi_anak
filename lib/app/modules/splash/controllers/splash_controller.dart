import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/data/services/services.dart';
import 'package:flutter_gizi_anak/app/routes/app_pages.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Widget circleLoad = SizedBox();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 2), () {
      circleLoad = CircularProgressIndicator(
        color: kPrimaryColor,
      );
    });

    AuthServices.userStream.listen(onAuthStateChanged);
  }

  void onAuthStateChanged(User? user) async {
    if (user != null) {
      final userModel = await UserServices.getUser(user.uid);

      if (userModel.role == 'admin') {
        Get.offAllNamed(Routes.ADMIN);
        return;
      }
      Get.offAllNamed(Routes.NAVBAR, arguments: userModel);
    } else {
      Get.offAllNamed(Routes.ONBOARDING);
    }
  }
}
