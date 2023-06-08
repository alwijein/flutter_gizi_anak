// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_gizi_anak_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataGiziAnakModel _$$_DataGiziAnakModelFromJson(Map<String, dynamic> json) =>
    _$_DataGiziAnakModel(
      userId: json['userId'] as String? ?? '-',
      namaAnak: json['namaAnak'] as String? ?? '-',
      statusGizi: json['statusGizi'] as String? ?? '-',
      umur: json['umur'] as int? ?? 0,
      tanggal: json['tanggal'] as String? ?? '-',
      tinggi: (json['tinggi'] as num?)?.toDouble() ?? 0.0,
      beratBadan: (json['beratBadan'] as num?)?.toDouble() ?? 0.0,
      statusTinggi: json['statusTinggi'] as String? ?? '-',
      statusBerat: json['statusBerat'] as String? ?? '-',
    );

Map<String, dynamic> _$$_DataGiziAnakModelToJson(
        _$_DataGiziAnakModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'namaAnak': instance.namaAnak,
      'statusGizi': instance.statusGizi,
      'umur': instance.umur,
      'tanggal': instance.tanggal,
      'tinggi': instance.tinggi,
      'beratBadan': instance.beratBadan,
      'statusTinggi': instance.statusTinggi,
      'statusBerat': instance.statusBerat,
    };
