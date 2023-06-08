part of 'components.dart';

class Badges extends StatelessWidget {
  const Badges({
    Key? key,
    required this.title,
    required this.color,
    this.padding = 5,
  }) : super(key: key);
  final String title;
  final Color color;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color.withOpacity(0.2),
      ),
      child: Text(
        title,
        style: whiteTextStyle.copyWith(
          color: color,
          fontSize: getPropertionateScreenWidht(12),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
