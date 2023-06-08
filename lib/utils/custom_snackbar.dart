part of 'utils.dart';

class CustomSnackbar {
  void success(String msg) {
    if (Get.isSnackbarOpen) {
      Get.closeAllSnackbars();
    } else {
      Get.snackbar(
        'Success',
        msg,
        animationDuration: Duration(
          milliseconds: 800,
        ),
      );
    }
  }

  void failed(String msg) {
    if (Get.isSnackbarOpen) {
      Get.closeAllSnackbars();
    } else {
      Get.snackbar(
        'Gagal',
        msg,
        animationDuration: Duration(
          milliseconds: 800,
        ),
      );
    }
  }
}
