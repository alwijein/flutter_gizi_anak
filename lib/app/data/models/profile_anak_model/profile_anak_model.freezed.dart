// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_anak_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileAnakModel _$ProfileAnakModelFromJson(Map<String, dynamic> json) {
  return _ProfileAnakModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileAnakModel {
  String get userId => throw _privateConstructorUsedError;
  String get foto => throw _privateConstructorUsedError;
  String get namaAnak => throw _privateConstructorUsedError;
  String get tanggalLahri => throw _privateConstructorUsedError;
  String get umurAnak => throw _privateConstructorUsedError;
  String get jenisKelamin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileAnakModelCopyWith<ProfileAnakModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAnakModelCopyWith<$Res> {
  factory $ProfileAnakModelCopyWith(
          ProfileAnakModel value, $Res Function(ProfileAnakModel) then) =
      _$ProfileAnakModelCopyWithImpl<$Res, ProfileAnakModel>;
  @useResult
  $Res call(
      {String userId,
      String foto,
      String namaAnak,
      String tanggalLahri,
      String umurAnak,
      String jenisKelamin});
}

/// @nodoc
class _$ProfileAnakModelCopyWithImpl<$Res, $Val extends ProfileAnakModel>
    implements $ProfileAnakModelCopyWith<$Res> {
  _$ProfileAnakModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? foto = null,
    Object? namaAnak = null,
    Object? tanggalLahri = null,
    Object? umurAnak = null,
    Object? jenisKelamin = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      namaAnak: null == namaAnak
          ? _value.namaAnak
          : namaAnak // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalLahri: null == tanggalLahri
          ? _value.tanggalLahri
          : tanggalLahri // ignore: cast_nullable_to_non_nullable
              as String,
      umurAnak: null == umurAnak
          ? _value.umurAnak
          : umurAnak // ignore: cast_nullable_to_non_nullable
              as String,
      jenisKelamin: null == jenisKelamin
          ? _value.jenisKelamin
          : jenisKelamin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileAnakModelCopyWith<$Res>
    implements $ProfileAnakModelCopyWith<$Res> {
  factory _$$_ProfileAnakModelCopyWith(
          _$_ProfileAnakModel value, $Res Function(_$_ProfileAnakModel) then) =
      __$$_ProfileAnakModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String foto,
      String namaAnak,
      String tanggalLahri,
      String umurAnak,
      String jenisKelamin});
}

/// @nodoc
class __$$_ProfileAnakModelCopyWithImpl<$Res>
    extends _$ProfileAnakModelCopyWithImpl<$Res, _$_ProfileAnakModel>
    implements _$$_ProfileAnakModelCopyWith<$Res> {
  __$$_ProfileAnakModelCopyWithImpl(
      _$_ProfileAnakModel _value, $Res Function(_$_ProfileAnakModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? foto = null,
    Object? namaAnak = null,
    Object? tanggalLahri = null,
    Object? umurAnak = null,
    Object? jenisKelamin = null,
  }) {
    return _then(_$_ProfileAnakModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      namaAnak: null == namaAnak
          ? _value.namaAnak
          : namaAnak // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalLahri: null == tanggalLahri
          ? _value.tanggalLahri
          : tanggalLahri // ignore: cast_nullable_to_non_nullable
              as String,
      umurAnak: null == umurAnak
          ? _value.umurAnak
          : umurAnak // ignore: cast_nullable_to_non_nullable
              as String,
      jenisKelamin: null == jenisKelamin
          ? _value.jenisKelamin
          : jenisKelamin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileAnakModel implements _ProfileAnakModel {
  const _$_ProfileAnakModel(
      {this.userId = '-',
      this.foto = '-',
      this.namaAnak = '-',
      this.tanggalLahri = '-',
      this.umurAnak = '-',
      this.jenisKelamin = '-'});

  factory _$_ProfileAnakModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileAnakModelFromJson(json);

  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String foto;
  @override
  @JsonKey()
  final String namaAnak;
  @override
  @JsonKey()
  final String tanggalLahri;
  @override
  @JsonKey()
  final String umurAnak;
  @override
  @JsonKey()
  final String jenisKelamin;

  @override
  String toString() {
    return 'ProfileAnakModel(userId: $userId, foto: $foto, namaAnak: $namaAnak, tanggalLahri: $tanggalLahri, umurAnak: $umurAnak, jenisKelamin: $jenisKelamin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileAnakModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.foto, foto) || other.foto == foto) &&
            (identical(other.namaAnak, namaAnak) ||
                other.namaAnak == namaAnak) &&
            (identical(other.tanggalLahri, tanggalLahri) ||
                other.tanggalLahri == tanggalLahri) &&
            (identical(other.umurAnak, umurAnak) ||
                other.umurAnak == umurAnak) &&
            (identical(other.jenisKelamin, jenisKelamin) ||
                other.jenisKelamin == jenisKelamin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, foto, namaAnak,
      tanggalLahri, umurAnak, jenisKelamin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileAnakModelCopyWith<_$_ProfileAnakModel> get copyWith =>
      __$$_ProfileAnakModelCopyWithImpl<_$_ProfileAnakModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileAnakModelToJson(
      this,
    );
  }
}

abstract class _ProfileAnakModel implements ProfileAnakModel {
  const factory _ProfileAnakModel(
      {final String userId,
      final String foto,
      final String namaAnak,
      final String tanggalLahri,
      final String umurAnak,
      final String jenisKelamin}) = _$_ProfileAnakModel;

  factory _ProfileAnakModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileAnakModel.fromJson;

  @override
  String get userId;
  @override
  String get foto;
  @override
  String get namaAnak;
  @override
  String get tanggalLahri;
  @override
  String get umurAnak;
  @override
  String get jenisKelamin;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileAnakModelCopyWith<_$_ProfileAnakModel> get copyWith =>
      throw _privateConstructorUsedError;
}
