import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/data/models/data_gizi_anak_model.dart/data_gizi_anak_model.dart';
import 'package:flutter_gizi_anak/app/modules/components/components.dart';
import 'package:flutter_gizi_anak/app/modules/profile_anak/views/add_new_calculate_view.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';
import 'package:flutter_gizi_anak/utils/utils.dart';

import 'package:get/get.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../controllers/profile_anak_controller.dart';

class ProfileAnakView extends GetView<ProfileAnakController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Gizi Anak'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      controller.profileAnakModel.foto,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama lengkap',
                        style: subtitleTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Tanggal lahir',
                        style: subtitleTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Jenis kelamin',
                        style: subtitleTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.profileAnakModel.namaAnak,
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        controller.profileAnakModel.tanggalLahri,
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        controller.profileAnakModel.jenisKelamin,
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getPropertionateScreenWidht(18),
                ),
                child: Divider(),
              ),
              controller.obx(
                (state) => Expanded(
                  child: HorizontalDataTable(
                    leftHandSideColumnWidth: 100,
                    rightHandSideColumnWidth: 400,
                    isFixedHeader: true,
                    headerWidgets: _getTitleWidget(),
                    leftSideItemBuilder: (context, index) =>
                        _generateFirstColumnRow(
                      state[index],
                    ),
                    rightSideItemBuilder: (context, index) =>
                        _generateRightHandSideColumnRow(
                      state[index],
                    ),
                    itemCount: state!.length,
                    rowSeparatorWidget: const Divider(
                      color: Colors.black54,
                      height: 1.0,
                      thickness: 0.0,
                    ),
                    leftHandSideColBackgroundColor: Color(0xFFFFFFFF),
                    rightHandSideColBackgroundColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(
                height: getPropertionateScreenWidht(10),
              ),
              DefaultButton(
                text: Text(
                  'Tambah Perhitungan Berat Badan',
                  style: whiteTextStyle,
                ),
                press: () => Get.to(AddNewCalculateView()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('Tanggal', 100),
      _getTitleItemWidget('Status Gizi', 100),
      _getTitleItemWidget('Umur', 100),
      _getTitleItemWidget('Tinggi', 100),
      _getTitleItemWidget('Berat', 100),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      child: Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
      width: width,
      height: 56,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateFirstColumnRow(DataGiziAnakModel data) {
    return Container(
      child: Text(
        FormatDate.formatDateBasic(DateTime.parse(data.tanggal)),
        style: primaryTextStyle,
      ),
      width: 50,
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(DataGiziAnakModel data) {
    return Row(
      children: <Widget>[
        Container(
          child: Badges(
            title: data.statusGizi,
            color: controller.getColor(data.statusGizi),
          ),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(
            '${data.umur} bulan',
            style: primaryTextStyle,
          ),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${data.tinggi} cm',
                style: primaryTextStyle,
              ),
              controller.checkRank(data.statusTinggi),
            ],
          ),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${data.beratBadan} kg',
                style: primaryTextStyle,
              ),
              controller.checkRank(data.statusBerat),
            ],
          ),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }
}
