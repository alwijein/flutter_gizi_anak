import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/modules/monitoring/views/monitoring_view.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:flutter_gizi_anak/app/modules/home/views/home_view.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: SvgPicture.asset('assets/images/logo-small.svg'),
          ),
          body: IndexedStack(
            index: controller.currentIndex,
            children: [
              HomeView(),
              MonitoringView(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: kBackgroundColor2,
            elevation: 0,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: primaryTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(12),
            ),
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: kSecondaryColor,
            unselectedLabelStyle: primaryTextStyle.copyWith(
              color: kSecondaryColor,
              fontSize: getPropertionateScreenWidht(12),
            ),
            currentIndex: controller.currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: controller.changeTabIndex,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding:
                      EdgeInsets.only(bottom: getPropertionateScreenWidht(8)),
                  child: SvgPicture.asset(
                    'assets/icons/home-icon.svg',
                    color: controller.currentIndex == 0
                        ? kPrimaryColor
                        : kPrimaryLightColor,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding:
                      EdgeInsets.only(bottom: getPropertionateScreenWidht(8)),
                  child: SvgPicture.asset(
                    'assets/icons/time-icon.svg',
                    color: controller.currentIndex == 1
                        ? kPrimaryColor
                        : kPrimaryLightColor,
                  ),
                ),
                label: 'Riwayat',
              ),
            ],
          ),
        );
      },
    );
  }
}
