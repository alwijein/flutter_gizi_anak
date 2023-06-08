part of '../services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(UserModel users) async {
    _userCollection.doc(users.id).set({
      'nama': users.nama,
      'namaLengkap': users.namaLengkap,
      'email': users.email,
      'alamat': users.alamat,
      'role': users.role,
    });
  }

  static Future<UserModel> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    var data = snapshot.data() as Map;
    return UserModel(
      id: id,
      nama: data['nama'],
      namaLengkap: data['namaLengkap'],
      email: data['email'],
      alamat: data['alamat'],
      role: data['role'],
    );
  }

  static Future<List<UserModel>> getUsers(String lokasiFasyankes) async {
    List<UserModel> users = [];
    QuerySnapshot maps = await _userCollection
        .where('lokasiFasyankes', isEqualTo: lokasiFasyankes)
        .get();

    for (var data in maps.docs) {
      if (data['role'] != 'admin') {
        users.add(
          UserModel(
            nama: data['nama'],
            namaLengkap: data['namaLengkap'],
            email: data['email'],
            alamat: data['alamat'],
            role: data['role'],
          ),
        );
      }
    }
    return users;
  }

  static Future<void> updateData(String email, String id) async {
    await _userCollection.doc(email).update({'name': 'id'});
  }
}
