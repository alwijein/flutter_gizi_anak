import 'package:flutter_gizi_anak/app/data/models/user_model/user_model.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController {
  int currentIndex = 0;

  void changeTabIndex(int index) async {
    currentIndex = index;

    update();
  }

  UserModel userModel = UserModel();

  @override
  void onInit() {
    userModel = Get.arguments;
    super.onInit();
  }
}
