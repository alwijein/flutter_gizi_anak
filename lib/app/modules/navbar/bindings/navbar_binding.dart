import 'package:flutter_gizi_anak/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_gizi_anak/app/modules/monitoring/controllers/monitoring_controller.dart';
import 'package:get/get.dart';

import '../controllers/navbar_controller.dart';

class NavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavbarController>(
      () => NavbarController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<MonitoringController>(
      () => MonitoringController(),
    );
  }
}
