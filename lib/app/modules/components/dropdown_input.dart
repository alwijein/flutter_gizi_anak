part of 'components.dart';

class DropdownInput extends StatelessWidget {
  const DropdownInput({
    super.key,
    required this.hintText,
    required this.typeFormModel,
    this.onChanged,
  });

  final String hintText;
  final List typeFormModel;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      iconEnabledColor: kPrimaryColor,
      iconDisabledColor: kSecondaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: subtitleTextStyle.copyWith(
          fontSize: getPropertionateScreenWidht(14),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 10.0,
        ),
      ),
      isExpanded: true,
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      validator: (value) {
        if (value == null) {
          return 'Field tidak boleh kosong';
        } else {
          return null;
        }
      },
      items: typeFormModel
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: primaryTextStyle,
                ),
              ))
          .toList(),
      onChanged: onChanged,
      onSaved: (value) {},
    );
  }
}
