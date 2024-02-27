import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/data/models/profile_anak_model/profile_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/models/user_model/user_model.dart';
import 'package:flutter_gizi_anak/app/data/services/services.dart';
import 'package:flutter_gizi_anak/app/modules/components/components.dart';
import 'package:flutter_gizi_anak/app/modules/monitoring/views/create_profile_anak_view.dart';
import 'package:flutter_gizi_anak/app/modules/navbar/controllers/navbar_controller.dart';
import 'package:flutter_gizi_anak/app/routes/app_pages.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/monitoring_controller.dart';

class MonitoringView extends GetView<MonitoringController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultPadding),
          child: controller.obx(
            (state) => ListView.builder(
              itemCount: controller.listProfileAnak.value.length,
              itemBuilder: (context, index) {
                return CardMonitoringAnak(
                  press2: () async {
                    await MonitoringAnakServices.deleteProfileAnak(
                      controller.listProfileAnak.value[index].userId,
                      controller.listProfileAnak.value[index].namaAnak,
                    );
                    await controller.getProfileAnak(Get.arguments);
                  },
                  press: () => Get.toNamed(
                    Routes.PROFILE_ANAK,
                    arguments: controller.listProfileAnak.value[index],
                  ),
                  data: controller.listProfileAnak.value[index],
                );
              },
            ),
            onEmpty: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/illustration-empty.svg',
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(24),
                ),
                Text(
                  'Data kosong',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Anda belum pernah melakukan inputan harap tambah profile anak terlebih dahulu',
                  style: subtitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: !controller.isFromAdmin
          ? Padding(
              padding: EdgeInsets.all(kDefaultPadding),
              child: DefaultButton(
                text: Text(
                  'Tambah Profile Anak',
                  style: whiteTextStyle,
                ),
                press: () => Get.to(
                  CreateProfileAnakCView(),
                ),
              ),
            )
          : null,
    );
  }
}

class CardMonitoringAnak extends StatelessWidget {
  const CardMonitoringAnak({
    Key? key,
    required this.data,
    required this.press,
    required this.press2,
  }) : super(key: key);

  final ProfileAnakModel data;
  final Function() press;
  final Function() press2;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding,
        ),
        margin: EdgeInsets.only(bottom: getPropertionateScreenWidht(14)),
        decoration: BoxDecoration(
          color: kBackgroundColor2,
          borderRadius: BorderRadius.circular(20),
          boxShadow: softShadow,
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(data.foto),
          ),
          title: Text(
            data.namaAnak,
            style: primaryTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.tanggalLahri,
                style: primaryTextStyle.copyWith(
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'Umur ${data.umurAnak}',
                style: primaryTextStyle,
              ),
            ],
          ),
          trailing: GestureDetector(
            onTap: press2,
            child: Icon(
              Icons.delete,
              color: kPrimaryColor,
              size: getPropertionateScreenWidht(25),
            ),
          ),
        ),
      ),
    );
  }
}

class CardUser extends StatelessWidget {
  const CardUser({
    Key? key,
    required this.data,
    required this.press,
  }) : super(key: key);

  final UserModel data;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding,
        ),
        margin: EdgeInsets.only(bottom: getPropertionateScreenWidht(14)),
        decoration: BoxDecoration(
          color: kBackgroundColor2,
          borderRadius: BorderRadius.circular(20),
          boxShadow: softShadow,
        ),
        child: ListTile(
          title: Text(
            data.namaLengkap,
            style: primaryTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alamat:  ${data.alamat}',
                style: primaryTextStyle.copyWith(),
              ),
              Text(
                data.email,
                style: primaryTextStyle.copyWith(
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
