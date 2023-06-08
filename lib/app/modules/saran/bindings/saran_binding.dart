import 'package:get/get.dart';

import '../controllers/saran_controller.dart';

class SaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SaranController>(
      () => SaranController(),
    );
  }
}
