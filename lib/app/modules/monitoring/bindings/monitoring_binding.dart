import 'package:get/get.dart';

import '../controllers/monitoring_controller.dart';

class MonitoringBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MonitoringController>(
      () => MonitoringController(),
    );
  }
}
