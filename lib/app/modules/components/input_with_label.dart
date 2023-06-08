part of 'components.dart';

class InputWithLabel extends StatelessWidget {
  const InputWithLabel({
    Key? key,
    required this.label,
    required this.hint,
    this.intputType = TextInputType.text,
    this.obscureText,
    this.textController,
    this.onShowPass,
  }) : super(key: key);

  final String label, hint;
  final TextInputType intputType;
  final bool? obscureText;
  final TextEditingController? textController;
  final Function()? onShowPass;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getPropertionateScreenWidht(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: subtitleTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidht(8),
          ),
          TextFormField(
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              hintText: hint,
              suffixIcon: obscureText == null
                  ? null
                  : GestureDetector(
                      onTap: onShowPass,
                      child: Icon(
                        obscureText! ? Icons.visibility : Icons.visibility,
                      ),
                    ),
            ),
            keyboardType: intputType,
            controller: textController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Field tidak boleh kosong';
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }
}
