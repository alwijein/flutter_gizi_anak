import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/modules/monitoring/controllers/monitoring_controller.dart';
import 'package:flutter_gizi_anak/app/routes/app_pages.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';

import 'package:get/get.dart';

import '../../../data/services/services.dart';
import '../../monitoring/views/monitoring_view.dart';
import '../controllers/admin_controller.dart';

class AdminView extends GetView<AdminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Monitoring Admin'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await AuthServices.signOut();
            },
          )),
      body: controller.obx(
        (state) => Container(
          padding: EdgeInsets.all(kDefaultPadding),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total User',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    state!.length.toString(),
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getPropertionateScreenHeight(20),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (context, index) {
                    return CardUser(
                      press: () => Get.toNamed(
                        Routes.MONITORING,
                        arguments: state[index].id,
                      ),
                      data: state[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
