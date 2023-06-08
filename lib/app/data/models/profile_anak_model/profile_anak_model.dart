import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_anak_model.freezed.dart';
part 'profile_anak_model.g.dart';

@freezed
class ProfileAnakModel with _$ProfileAnakModel {
  const factory ProfileAnakModel({
    @Default('-') String userId,
    @Default('-') String foto,
    @Default('-') String namaAnak,
    @Default('-') String tanggalLahri,
    @Default('-') String umurAnak,
    @Default('-') String jenisKelamin,
  }) = _ProfileAnakModel;

  factory ProfileAnakModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileAnakModelFromJson(json);
}
