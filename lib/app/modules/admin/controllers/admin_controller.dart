import 'package:flutter_gizi_anak/app/data/models/profile_anak_model/profile_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/models/user_model/user_model.dart';
import 'package:flutter_gizi_anak/app/data/services/services.dart';
import 'package:get/get.dart';

class AdminController extends GetxController with StateMixin<List<UserModel>> {
  Future getAllUser() async {
    try {
      change(null, status: RxStatus.loading());
      var data = await MonitoringAnakServices.getAllUser();

      if (data.isEmpty) {
        change(null, status: RxStatus.empty());
        return;
      }
      change(data, status: RxStatus.success());
    } catch (e) {
      change(
        null,
        status: RxStatus.error('Terjadi Kesalahan'),
      );
    }
  }

  @override
  void onInit() {
    // getAllProfileAnak();
    getAllUser();
    super.onInit();
  }
}
