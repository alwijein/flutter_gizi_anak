import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/modules/saran/views/saran_makanan_bergizi_view.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/saran_controller.dart';

class SaranView extends GetView<SaranController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/images/logo-small.svg'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultPadding),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return SaranCard(
                press: () => Get.to(SaranMakananBergiziView()),
              );
            },
          ),
        ),
      ),
    );
  }
}

class SaranCard extends StatelessWidget {
  const SaranCard({
    required this.press,
    Key? key,
  }) : super(key: key);

  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(getPropertionateScreenWidht(14)),
        margin: EdgeInsets.only(bottom: getPropertionateScreenWidht(14)),
        decoration: BoxDecoration(
          boxShadow: softShadow,
          borderRadius: BorderRadius.circular(24),
          color: kBackgroundColor1,
        ),
        child: ListTile(
          title: Text(
            'Saran Makanan Bergizi bagi balita & anak',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          iconColor: kPrimaryColor,
          leading: Container(
            height: getPropertionateScreenWidht(45),
            width: getPropertionateScreenWidht(45),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFBDEB98).withOpacity(0.16),
            ),
            child: SvgPicture.asset('assets/icons/icon-lamp.svg'),
          ),
        ),
      ),
    );
  }
}
