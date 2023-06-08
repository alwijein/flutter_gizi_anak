import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/data/models/data_gizi_anak_model.dart/data_gizi_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/models/profile_anak_model/profile_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/services/services.dart';
import 'package:flutter_gizi_anak/app/modules/profile_anak/views/calculate_core/standar_antropometri_anak.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';
import 'package:get/get.dart';

class ProfileAnakController extends GetxController
    with StateMixin<List<DataGiziAnakModel>> {
  TextEditingController bbController = TextEditingController();
  TextEditingController tbController = TextEditingController();
  TextEditingController umurController = TextEditingController();

  String statusGizi = '';

  double bb = 0;
  double tb = 0;
  int umur = 0;

  String statusTinggi = '';
  String statusBerat = '';

  Future<void> hitungStatusGizi() async {
    statusGizi = '';

    bb = double.parse(bbController.text);
    tb = double.parse(tbController.text);
    umur = int.parse(umurController.text);

    double bmi = StandarAntropometriAnak.getBMI(bb, tb);

    bool isFemale = profileAnakModel.jenisKelamin == 'Perempuan' ? true : false;

    // double zScoreBBU =
    //     StandarAntropometriAnak.getBodyWeightToAgeIndex(bb, umur);

    double zScoreTBU = StandarAntropometriAnak.getBodyHeightToAgeIndex(
      tb,
      umur,
      isFemale: isFemale,
    );
    double zScoreBBTB = StandarAntropometriAnak.getBodyWeightToHeigtIndex(
      bb,
      tb,
      umur,
      isFemale: isFemale,
    );
    double zScoreBMIU = StandarAntropometriAnak.getBmiToAgeIndex(
      bmi,
      umur,
      isFemale: isFemale,
    );

    print(zScoreBMIU);

    if (zScoreBMIU < -3) {
      statusGizi = 'Gizi Buruk';
    } else if (zScoreBMIU >= -3 && zScoreBMIU < -2) {
      statusGizi = 'Gizi Kurang';
    } else if (zScoreBMIU >= -2 && zScoreBMIU <= 1) {
      statusGizi = 'Gizi Baik';
    } else if ((zScoreBMIU > 1 && zScoreBMIU <= 2) ||
        (zScoreTBU > 1 && zScoreTBU <= 2) ||
        (zScoreBBTB > 1 && zScoreBBTB <= 2)) {
      statusGizi = 'Beresiko Gizi Lebih';
    } else if (zScoreBMIU > 2 && zScoreBMIU <= 3) {
      statusGizi = 'Gizi Lebih';
    } else if (zScoreBMIU > 3) {
      statusGizi = 'Obesitas';
    }

    if (listGiziAnak.isNotEmpty) {
      if (bb > listGiziAnak.first.beratBadan) {
        statusBerat = 'up';
      } else if (bb < listGiziAnak.first.beratBadan) {
        statusBerat = 'down';
      } else {
        statusBerat = 'stay';
      }

      if (tb > listGiziAnak.first.tinggi) {
        statusTinggi = 'up';
      } else if (tb < listGiziAnak.first.tinggi) {
        statusTinggi = 'down';
      } else {
        statusTinggi = 'stay';
      }
    } else {
      statusTinggi = 'stay';
      statusBerat = 'stay';
    }
  }

  ProfileAnakModel profileAnakModel = ProfileAnakModel();

  // final listGiziAnak = Rx<List<DataGiziAnakModel>>([]);
  List<DataGiziAnakModel> listGiziAnak = [];

  Future getListGiziAnak() async {
    try {
      change(listGiziAnak, status: RxStatus.loading());
      listGiziAnak = await MonitoringAnakServices.getListGiziAnak(
        id: profileAnakModel.userId,
        namaAnak: profileAnakModel.namaAnak,
      );
      // change(value);
      change(listGiziAnak, status: RxStatus.success());
    } catch (e) {
      change(
        listGiziAnak,
        status: RxStatus.error('Terjadi Kesalahan'),
      );
    }
  }

  Widget checkRank(String status) {
    Icon icon;
    switch (status) {
      case 'up':
        icon = Icon(
          Icons.arrow_drop_up,
          color: kSuccess,
        );
        break;
      case 'down':
        icon = Icon(
          Icons.arrow_drop_down,
          color: kAlert,
        );
        break;
      default:
        icon = Icon(
          Icons.remove,
          color: Colors.purpleAccent,
        );
        break;
    }

    return icon;
  }

  Color getColor(String value) {
    Color color = Colors.transparent;
    switch (value) {
      case 'Gizi Buruk':
        color = Colors.redAccent;
        break;
      case 'Gizi Kurang':
        color = Colors.orangeAccent;
        break;
      case 'Gizi Baik':
        color = Colors.greenAccent;
        break;
      case 'Beresiko Gizi Lebih':
        color = Colors.orangeAccent;
        break;
      case 'Obesitas':
        color = Colors.redAccent;
        break;
      default:
    }

    return color;
  }

  void resetForm() {
    bbController.dispose();
    tbController.dispose();
    umurController.dispose();

    statusGizi = '';

    bb = 0;
    tb = 0;
    umur = 0;

    statusTinggi = '';
    statusBerat = '';
  }

  @override
  void onInit() {
    profileAnakModel = Get.arguments;
    getListGiziAnak();
    super.onInit();
  }
}
