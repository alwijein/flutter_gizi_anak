import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_gizi_anak/app/data/models/profile_anak_model/profile_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/services/services.dart';
import 'package:flutter_gizi_anak/app/modules/navbar/controllers/navbar_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MonitoringController extends GetxController with StateMixin {
  TextEditingController namaC = TextEditingController();
  TextEditingController umurC = TextEditingController();
  TextEditingController tanggalLahirC = TextEditingController();
  TextEditingController fileName = TextEditingController();
  String jenisKelamin = '';

  final ImagePicker picker = ImagePicker();

  File foto = File('');

  bool isFromAdmin = true;

  Future<void> getImage() async {
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 40,
    );

    foto = File(image!.path);
    fileName.text = image.name;
  }

  late NavbarController userController;

  final listProfileAnak = Rx<List<ProfileAnakModel>>([]);

  Future getProfileAnak(String? id) async {
    try {
      change(listProfileAnak, status: RxStatus.loading());
      listProfileAnak.value = await MonitoringAnakServices.getProfileAnak(
          id ?? userController.userModel.id);

      if (listProfileAnak.value.isEmpty) {
        change(listProfileAnak, status: RxStatus.empty());
      } else {
        change(listProfileAnak, status: RxStatus.success());
      }
    } catch (e) {
      change(
        listProfileAnak,
        status: RxStatus.error('Terjadi Kesalahan'),
      );
    }
  }

  void disposeForm() {
    namaC.dispose();
    umurC.dispose();
    tanggalLahirC.dispose();
    fileName.dispose();
    jenisKelamin = '';
  }

  @override
  void onInit() {
    String? id = Get.arguments;

    if (id == null) {
      userController = Get.find<NavbarController>();
      isFromAdmin = false;
    }

    getProfileAnak(id);
    super.onInit();
  }
}
