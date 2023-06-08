import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_gizi_anak_model.freezed.dart';
part 'data_gizi_anak_model.g.dart';

@freezed
class DataGiziAnakModel with _$DataGiziAnakModel {
  const factory DataGiziAnakModel({
    @Default('-') String userId,
    @Default('-') String namaAnak,
    @Default('-') String statusGizi,
    @Default(0) int umur,
    @Default('-') String tanggal,
    @Default(0.0) double tinggi,
    @Default(0.0) double beratBadan,
    @Default('-') String statusTinggi,
    @Default('-') String statusBerat,
  }) = _DataGiziAnakModel;

  factory DataGiziAnakModel.fromJson(Map<String, dynamic> json) =>
      _$DataGiziAnakModelFromJson(json);
}
