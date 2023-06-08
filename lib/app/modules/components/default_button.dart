part of 'components.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    this.isInfinity = true,
    this.height = 50,
    this.color = kPrimaryColor,
    this.isLoading = false,
    this.isOutlined = false,
  }) : super(key: key);

  final Widget text;
  final Function() press;
  final bool isInfinity;
  final double height;
  final Color color;
  final bool isLoading;
  final bool isOutlined;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flabuttonStyle = TextButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenWidht(24),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );

    final ButtonStyle outlinedStyle = TextButton.styleFrom(
      backgroundColor: kBackgroundColor2,
      padding: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenWidht(24),
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: kPrimaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
    return SizedBox(
      width: isInfinity ? double.infinity : null,
      height: getPropertionateScreenHeight(height),
      child: TextButton(
        style: isOutlined ? outlinedStyle : flabuttonStyle,
        onPressed: press,
        child: isLoading
            ? CircularProgressIndicator(
                color: kBackgroundColor2,
              )
            : text,
      ),
    );
  }
}
