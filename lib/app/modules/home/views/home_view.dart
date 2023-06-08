import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/modules/navbar/controllers/navbar_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gizi_anak/app/data/models/user_model/user_model.dart';
import 'package:flutter_gizi_anak/app/data/services/services.dart';
import 'package:flutter_gizi_anak/app/modules/components/components.dart';
import 'package:flutter_gizi_anak/app/routes/app_pages.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  NavbarController userController = Get.put(NavbarController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, ${userController.userModel.nama}',
              style: subtitleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: getPropertionateScreenWidht(15),
            ),
            Text(
              'Silahkan Pilih Menu Yang Tersedia',
              style: primaryTextStyle.copyWith(
                fontSize: 36,
                fontWeight: bold,
              ),
            ),
            SizedBox(height: getPropertionateScreenWidht(30)),
            Row(
              children: [
                Expanded(
                  child: MenuCardPotrait(
                    icon: 'icon-lamp',
                    title: 'Saran Merawat Balita',
                    color: Color(0xFFBDEB98),
                    press: () {
                      Get.toNamed(Routes.SARAN);
                    },
                  ),
                ),
                SizedBox(
                  width: getPropertionateScreenWidht(15),
                ),
                Expanded(
                  child: MenuCardPotrait(
                    icon: 'icon-weigh',
                    title: 'Peralatan Mengukur',
                    color: Color(0xFFE6B47C),
                    press: () {
                      Get.toNamed(Routes.PERALATAN_MENGUKUR);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getPropertionateScreenWidht(15),
            ),
            GestureDetector(
              onTap: () {
                userController.changeTabIndex(1);
              },
              child: MenuCardLandscape(),
            ),
            SizedBox(height: getPropertionateScreenWidht(30)),
            DefaultButton(
              text: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logout,
                    color: kBackgroundColor2,
                  ),
                  SizedBox(
                    width: getPropertionateScreenWidht(14),
                  ),
                  Text(
                    'Keluar dari akun anda',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              press: () async {
                await AuthServices.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCardLandscape extends StatelessWidget {
  const MenuCardLandscape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getPropertionateScreenWidht(116),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        boxShadow: softShadow,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Color(0xFFB2A4EB).withOpacity(0.16),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset('assets/icons/icon-sus.svg'),
          ),
          SizedBox(width: getPropertionateScreenWidht(19)),
          Text(
            'Monitoring Gizi Anak',
            style: primaryTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCardPotrait extends StatelessWidget {
  const MenuCardPotrait({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final Color color;

  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding - 5),
        height: getPropertionateScreenWidht(170),
        decoration: BoxDecoration(
          color: kBackgroundColor2,
          boxShadow: softShadow,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: color.withOpacity(0.16),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset('assets/icons/$icon.svg'),
            ),
            Spacer(),
            Text(
              title,
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
