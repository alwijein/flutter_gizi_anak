// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String? ?? '-',
      nama: json['nama'] as String? ?? '-',
      namaLengkap: json['namaLengkap'] as String? ?? '-',
      email: json['email'] as String? ?? '-',
      alamat: json['alamat'] as String? ?? '-',
      role: json['role'] as String? ?? '-',
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'namaLengkap': instance.namaLengkap,
      'email': instance.email,
      'alamat': instance.alamat,
      'role': instance.role,
    };
