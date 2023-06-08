import 'package:flutter/material.dart';
import 'package:flutter_gizi_anak/app/modules/saran/views/saran_makanan_bergizi_view.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';

import 'package:get/get.dart';

import '../controllers/peralatan_mengukur_controller.dart';

class PeralatanMengukurView extends GetView<PeralatanMengukurController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peralatan Mengukur'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(bottom: getPropertionateScreenHeight(18)),
                  height: getPropertionateScreenHeight(200),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/image-peralatan.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Peralatan yang dipakai orang tua dari balita & anak untuk memonitoring status perkembangan gizi pada anak & balita dengan metode antropometri berbasis android',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: Divider(),
                ),
                Text(
                  '1.	Timbangan Digital (pengukur berat berat (BB) badan bayi & anak )',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/image-timbangan01.jpg',
                      ),
                    ),
                    SizedBox(
                      width: getPropertionateScreenWidht(18),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/image-timbangan02.jpg',
                      ),
                    ),
                  ],
                ),
                LongText(
                  text:
                      'Fungsi timbangan digital : fungsinya adalah untuk mengukur berat badan menurut umur dari balita & anak, untuk menghasilkan pengukuran berat badan yang lebih akurat dan konsisten',
                ),
                Divider(),
                Text(
                  '2.	Pita Lila (Lingkar Lengan Atas)',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(24),
                ),
                Image.asset(
                  'assets/images/image-pita.png',
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(18),
                ),
                LongText(
                  text:
                      'Fungsi Pita Lila : untuk mengukur lebar lengan bagian atas balita & anak sebagai tolak ukur status gizi karena beberapa pertimbangan, diantaranya adalah karena mudah, hasilnya cepat, harganya murah, dan tidak memerlukan data balita & anak.',
                ),
                Divider(),
                Text(
                  '3.	Myotape (pita pengukur lingkar kepala bayi))',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(24),
                ),
                Image.asset(
                  'assets/images/image- myotape.jpg',
                  width: getPropertionateScreenWidht(200),
                ),
                LongText(
                  text:
                      'Fungsi myotape : selain melihat berat dan tinggi badan balita maupun anak, tolak ukur pertumbuhan balita & anak juga dilihat dari ukuran lingkar kepalanya, melalui lingkar kepala dokter dapat menilai apakah si bayi bertumbuh dengan baik atau ada hambatan.',
                ),
                Divider(),
                Text(
                  '4.	Stature Meter (Alat pengukur tinggi badan (TB) balita maupun anak )',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(24),
                ),
                Image.asset(
                  'assets/images/image-stature.jpg',
                  width: getPropertionateScreenWidht(200),
                ),
                LongText(
                  text:
                      'Fungsi stature meter : mengukur tinggi badan balita maupun anak untuk mengukur perkembangan dari pada si balita maupun anak',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
