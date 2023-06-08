part of 'extensions.dart';

extension FirebaseUserExtension on User {
  UserModel convertToUser({
    required String nama,
    required String namaLengkap,
    required String email,
    required String alamat,
  }) =>
      UserModel(
        id: uid,
        nama: nama,
        namaLengkap: namaLengkap,
        role: 'user',
        alamat: alamat,
        email: email,
      );

  Future<UserModel?> fromFireStore() async => await UserServices.getUser(uid);
}
