import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_gizi_anak/config/config.dart';
import 'package:flutter_gizi_anak/constants/constants.dart';

class SaranMakananBergiziView extends StatelessWidget {
  const SaranMakananBergiziView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Makanan Bergizi untuk Anak & Balita',
        ),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageFrame(image: 'image-saran01'),
              Text(
                'Makanan bergizi bagi anak dibawah lima tahun (balita)',
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
              LongText(
                  text:
                      'Dan sedang aktif bermain dan belajar tentunya memerlukan asupan nutrisi yang cukup, tepat dan lengkap untuk menjamin agar tumbuh kembangnya optimal. Sebagai orang tua, pastikan agar kamu menyajikan menu makanan sehat yang bisa memberikan asupan energi dan zat gizi untuk mendukung perkembangan motorik, mental, dan kognitifnya, berikut adalah makanan sehat untuk balita yang perlu kamu ketahui :'),
              LongText(text: '''1.	Sayuran Berdaun Hijau 
Sayuran berdaun hijau tua seperti sawi, bayam, brokoli, dan kangkung memiliki banyak kandungan serat untuk menjaga metabolism tubuh dan kadar vitamin serta mineral yang tinggi, yaitu zat besi, kalsium, dan asam folat.'''),
              Image.asset(
                'assets/images/image-sayur-hijau.jpg',
              ),
              LongText(
                text: '''2.	Daging
Makanan sehat selanjutnya yakni daging. Daging merupakan sumber yang baik untuk tubuh karena mengandung vitamin, protein, mineral, zat besi, seng, dan vitamin B12. Kamu bisa membuat menu makanan sehat balita dari daging rendah lemak dan ayam tanpa kulit. Namun perlu diingat sebaiknya kamu perlu mengurangi konsumsi jeroan dan daging olahan seperti sosis dan nugget.''',
              ),
              Image.asset(
                'assets/images/image-daging.jpg',
              ),
              LongText(
                text: '''3.	Kacang-kacangan
Kamu juga bisa menyajikan menu makanan sehat balita dari kacang-kacangan seperti kacang tanah, kedelai, almon, pistachio, dan lain-lain yang memiliki kandungan sumber lemak baik (omega-3 dan omega-6) sehingga bermanfaat untuk tubuh, kbususnya jantung. Selain itu, kacang-kacangan ini juga mengandung vitamin dan mineral seperti vitamin E, fosfor, selenium, dan mangan.''',
              ),
              Image.asset(
                'assets/images/image-kacang.jpg',
              ),
              LongText(
                text: '''4.	Yoghurt
Kamu bisa memperkenalkan yoghurt kepada anak yang berusia satu tahun ke atas. Yoghurt merupakan bakteri baik dalam produk fermentasi susu berfungsi memelihara Kesehatan saluran pencernaan anak kamu. Makanan sehat yang satu ini juga menjadi sumber yang baik untuk kalsium dan vitamin D yang penting bagi Kesehatan tulang dan gigi uah hati kamu. Selain itu yoghurt juga memiliki manfaat untuk meningkatkan kekebalan tubuh serta Kesehatan jantung dan otak.''',
              ),
              Image.asset(
                'assets/images/image-yogurt.jpg',
              ),
              LongText(
                text:
                    'Itulah 4 makanan sehat yang perlu diberikan pada anak balita kamu. Dengan memberikan makanan-makanan sehat tersebut secara rutin makan akan membantu tumbuh kembang anak agar sehat dan jauh dari berbagai penyakit.',
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class LongText extends StatelessWidget {
  const LongText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getPropertionateScreenWidht(10),
      ),
      child: Text(
        text,
        style: primaryTextStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class ImageFrame extends StatelessWidget {
  const ImageFrame({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getPropertionateScreenHeight(18)),
      height: getPropertionateScreenHeight(200),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/$image.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
