import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController namaC = TextEditingController();
  TextEditingController namaLengkapC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController alamatC = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool checkForm() {
    final isValid = formKey.currentState!.validate();

    return isValid;
  }

  @override
  void onClose() {
    namaC.dispose();
    namaLengkapC.dispose();
    emailC.dispose();
    passwordC.dispose();
    alamatC.dispose();
    super.onClose();
  }
}
