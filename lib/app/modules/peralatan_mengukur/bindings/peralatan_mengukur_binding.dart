import 'package:get/get.dart';

import '../controllers/peralatan_mengukur_controller.dart';

class PeralatanMengukurBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PeralatanMengukurController>(
      () => PeralatanMengukurController(),
    );
  }
}
