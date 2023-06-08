import 'package:get/get.dart';

import 'package:flutter_gizi_anak/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_gizi_anak/app/modules/home/views/home_view.dart';
import 'package:flutter_gizi_anak/app/modules/login/bindings/login_binding.dart';
import 'package:flutter_gizi_anak/app/modules/login/views/login_view.dart';
import 'package:flutter_gizi_anak/app/modules/monitoring/bindings/monitoring_binding.dart';
import 'package:flutter_gizi_anak/app/modules/monitoring/views/monitoring_view.dart';
import 'package:flutter_gizi_anak/app/modules/navbar/bindings/navbar_binding.dart';
import 'package:flutter_gizi_anak/app/modules/navbar/views/navbar_view.dart';
import 'package:flutter_gizi_anak/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:flutter_gizi_anak/app/modules/onboarding/views/onboarding_view.dart';
import 'package:flutter_gizi_anak/app/modules/peralatan_mengukur/bindings/peralatan_mengukur_binding.dart';
import 'package:flutter_gizi_anak/app/modules/peralatan_mengukur/views/peralatan_mengukur_view.dart';
import 'package:flutter_gizi_anak/app/modules/profile_anak/bindings/profile_anak_binding.dart';
import 'package:flutter_gizi_anak/app/modules/profile_anak/views/profile_anak_view.dart';
import 'package:flutter_gizi_anak/app/modules/register/bindings/register_binding.dart';
import 'package:flutter_gizi_anak/app/modules/register/views/register_view.dart';
import 'package:flutter_gizi_anak/app/modules/saran/bindings/saran_binding.dart';
import 'package:flutter_gizi_anak/app/modules/saran/views/saran_view.dart';
import 'package:flutter_gizi_anak/app/modules/splash/bindings/splash_binding.dart';
import 'package:flutter_gizi_anak/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.SARAN,
      page: () => SaranView(),
      binding: SaranBinding(),
    ),
    GetPage(
      name: _Paths.MONITORING,
      page: () => MonitoringView(),
      binding: MonitoringBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_ANAK,
      page: () => ProfileAnakView(),
      binding: ProfileAnakBinding(),
    ),
    GetPage(
      name: _Paths.PERALATAN_MENGUKUR,
      page: () => PeralatanMengukurView(),
      binding: PeralatanMengukurBinding(),
    ),
  ];
}
