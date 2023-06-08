import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_gizi_anak/app/data/models/data_gizi_anak_model.dart/data_gizi_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/models/profile_anak_model/profile_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/services/services.dart';
import 'package:flutter_gizi_anak/app/modules/components/components.dart';
import 'package:flutter_gizi_anak/app/modules/profile_anak/controllers/profile_anak_controller.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';
import 'package:flutter_gizi_anak/utils/utils.dart';
import 'package:get/get.dart';

class AddNewCalculateView extends GetView<ProfileAnakController> {
  const AddNewCalculateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Perhitungan Berat Badan',
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputWithLabel(
                  label: 'Berat Badan Anak (KG)',
                  hint: 'Masukkan berat badan anak anda',
                  textController: controller.bbController,
                  intputType: TextInputType.number,
                ),
                InputWithLabel(
                  label: 'Tinggi Badan Anak',
                  hint: 'Masukkan tinggi badan anak anda',
                  textController: controller.tbController,
                  intputType: TextInputType.number,
                ),
                InputWithLabel(
                  label: 'Umur Anak',
                  hint: 'Masukkan Umur Anak Anda (Bulan)',
                  textController: controller.umurController,
                  intputType: TextInputType.number,
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(24),
                ),
                DefaultButton(
                  text: Text(
                    'Tambahkan',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  press: () async {
                    try {
                      EasyLoading.show(status: 'Loading');
                      await controller.hitungStatusGizi();

                      await MonitoringAnakServices.inputGiziAnak(
                          DataGiziAnakModel(
                        beratBadan: controller.bb,
                        statusGizi: controller.statusGizi,
                        umur: controller.umur,
                        tinggi: controller.tb,
                        tanggal: DateTime.now().toString(),
                        namaAnak: controller.profileAnakModel.namaAnak,
                        userId: controller.profileAnakModel.userId,
                        statusBerat: controller.statusBerat,
                        statusTinggi: controller.statusTinggi,
                      ));
                      await controller.getListGiziAnak();
                      Get.back();
                      EasyLoading.showSuccess('Berhail melakukan inputan');
                    } catch (e) {
                      print("Error: $e");
                      EasyLoading.showError('Gagal melakukan inputan');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
