import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_gizi_anak/app/data/models/profile_anak_model/profile_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/services/services.dart';
import 'package:flutter_gizi_anak/app/modules/components/components.dart';
import 'package:flutter_gizi_anak/app/modules/monitoring/controllers/monitoring_controller.dart';
import 'package:flutter_gizi_anak/app/modules/navbar/controllers/navbar_controller.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';
import 'package:get/get.dart';

class CreateProfileAnakCView extends StatelessWidget {
  const CreateProfileAnakCView({super.key});

  @override
  Widget build(BuildContext context) {
    MonitoringController controller = Get.put(MonitoringController());
    NavbarController userController = Get.find();
    MonitoringController monitoringController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Profile Anak'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Foto Anak',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(8),
                ),
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: 'Pilih foto anak anda',
                  ),
                  controller: controller.fileName,
                  onTap: () async {
                    await controller.getImage();
                  },
                ),
                InputWithLabel(
                  label: 'Nama Anak',
                  hint: 'Masukkan nama anak anda',
                  textController: controller.namaC,
                ),
                InputWithLabel(
                  label: 'Tanggal Lahir',
                  hint: 'bulan/tanggal/tahun',
                  textController: controller.tanggalLahirC,
                ),
                InputWithLabel(
                  label: 'Umur Anak',
                  hint: '2 tahun',
                  textController: controller.umurC,
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(12),
                ),
                Text(
                  'Jenis Kelamin',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(8),
                ),
                DropdownInput(
                  hintText: 'Pilih jenis kelamin anak',
                  typeFormModel: ['Laki-Laki', 'Perempuan'],
                  onChanged: (p0) {
                    controller.jenisKelamin = p0.toString();
                  },
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(24),
                ),
                DefaultButton(
                  text: Text(
                    'Buat Akun',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  press: () async {
                    EasyLoading.show(status: 'Loading');
                    if (await MonitoringAnakServices.inputProfileAnak(
                      ProfileAnakModel(
                        userId: userController.userModel.id,
                        jenisKelamin: controller.jenisKelamin,
                        namaAnak: controller.namaC.text,
                        tanggalLahri: controller.tanggalLahirC.text,
                        umurAnak: controller.umurC.text,
                      ),
                      controller.foto,
                    )) {
                      monitoringController.onInit();
                      Get.back();
                    }
                    EasyLoading.dismiss();
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
