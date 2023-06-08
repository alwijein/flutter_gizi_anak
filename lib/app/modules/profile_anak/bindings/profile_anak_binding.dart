import 'package:get/get.dart';

import '../controllers/profile_anak_controller.dart';

class ProfileAnakBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileAnakController>(
      () => ProfileAnakController(),
    );
  }
}
