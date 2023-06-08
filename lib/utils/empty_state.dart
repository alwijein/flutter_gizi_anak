part of 'utils.dart';

class EmptyState {
  static Widget suratEmpty() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/surat-empty-illustration.svg',
          ),
          SizedBox(
            height: getPropertionateScreenWidht(24),
          ),
          Text(
            'Opps tidak ada pengajuan surat',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(19),
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidht(14),
          ),
          Text(
            'belum ada pengajuan surat di devisi anda harap periksa lagi nanti',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(18),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  static Widget notificationEmpty() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/surat-empty-illustration.svg',
          ),
          SizedBox(
            height: getPropertionateScreenWidht(24),
          ),
          Text(
            'Opps tidak notification',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(19),
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidht(14),
          ),
          Text(
            'belum ada notification yang diterima harap periksa lagi nanti',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(18),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  static Widget maintenanceEmpty() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/maintenance-illustration.svg',
          ),
          SizedBox(
            height: getPropertionateScreenWidht(14),
          ),
          Text(
            'Opps tidak ada laporan',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(19),
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidht(14),
          ),
          Text(
            'Anda belum pernah membuat laporan',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(18),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  static Widget teknisiEmpty() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/maintenance-illustration.svg',
          ),
          SizedBox(
            height: getPropertionateScreenWidht(14),
          ),
          Text(
            'Opps tidak ada laporan',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(19),
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidht(14),
          ),
          Text(
            'Belum ada laporan yang dibuat',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(18),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  static Widget cutiEmpty() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/images/cuti-illustration.svg',
          ),
          SizedBox(
            height: getPropertionateScreenWidht(24),
          ),
          Text(
            'Opps tidak ada pengajuan cuti',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(19),
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidht(14),
          ),
          Text(
            'Anda belum pernah membuat pengajuan cuti',
            style: purpleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(18),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  static Widget draftEmpty() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.all_inbox,
          color: kPrimaryLightColor,
          size: getPropertionateScreenWidht(70),
        ),
        SizedBox(
          height: getPropertionateScreenWidht(8),
        ),
        Text(
          'Kosong',
          style: primaryLightTextStyle.copyWith(
            fontSize: getPropertionateScreenWidht(24),
            fontWeight: semiBold,
          ),
        ),
      ],
    );
  }
}
