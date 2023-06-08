// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_anak_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileAnakModel _$$_ProfileAnakModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileAnakModel(
      userId: json['userId'] as String? ?? '-',
      foto: json['foto'] as String? ?? '-',
      namaAnak: json['namaAnak'] as String? ?? '-',
      tanggalLahri: json['tanggalLahri'] as String? ?? '-',
      umurAnak: json['umurAnak'] as String? ?? '-',
      jenisKelamin: json['jenisKelamin'] as String? ?? '-',
    );

Map<String, dynamic> _$$_ProfileAnakModelToJson(_$_ProfileAnakModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'foto': instance.foto,
      'namaAnak': instance.namaAnak,
      'tanggalLahri': instance.tanggalLahri,
      'umurAnak': instance.umurAnak,
      'jenisKelamin': instance.jenisKelamin,
    };
