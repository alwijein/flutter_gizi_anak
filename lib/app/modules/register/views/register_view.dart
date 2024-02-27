import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/data/services/services.dart';
import 'package:flutter_gizi_anak/app/modules/components/components.dart';
import 'package:flutter_gizi_anak/app/routes/app_pages.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Akun'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultPadding),
          child: Form(
            key: controller.formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Buat akun anda',
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: getPropertionateScreenHeight(15),
                  ),
                  Text(
                    'Buat akun anda dan monitoring gizi anak anda',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: getPropertionateScreenHeight(15),
                  ),
                  InputWithLabel(
                    label: 'Nama',
                    hint: 'Masukkan nama anda',
                    textController: controller.namaC,
                  ),
                  InputWithLabel(
                    label: 'Nama Lengkap',
                    hint: 'Masukkan nama lengkap anda',
                    textController: controller.namaLengkapC,
                  ),
                  InputWithLabel(
                    label: 'Email',
                    hint: 'Masukkan email anda',
                    intputType: TextInputType.emailAddress,
                    textController: controller.emailC,
                  ),
                  InputWithLabel(
                    label: 'Alamat',
                    hint: 'Masukkan alamat anda',
                    intputType: TextInputType.streetAddress,
                    textController: controller.alamatC,
                  ),
                  InputWithLabel(
                    label: 'Password',
                    hint: 'Masukkan password anda',
                    intputType: TextInputType.visiblePassword,
                    textController: controller.passwordC,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: getPropertionateScreenHeight(50),
                  ),
                  DefaultButton(
                    text: Text(
                      'Buat Akun',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    press: () async {
                      if (!controller.checkForm()) {
                        return;
                      }
                      await AuthServices.signUp(
                        nama: controller.namaC.text,
                        namaLengkap: controller.namaLengkapC.text,
                        email: controller.emailC.text,
                        alamat: controller.alamatC.text,
                        password: controller.passwordC.text,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
