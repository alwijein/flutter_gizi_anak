part of 'services.dart';

class MonitoringAnakServices {
  static CollectionReference _anakCollection =
      FirebaseFirestore.instance.collection('profile_anak');
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static CollectionReference giziAnakCollection =
      FirebaseFirestore.instance.collection('gizi_anak');

  static Future<bool> inputProfileAnak(
      ProfileAnakModel profileAnak, File foto) async {
    try {
      String fileName = basename(foto.path);
      String imageUrl = '';
      if (foto.path.isNotEmpty) {
        firebase_storage.Reference ref = firebase_storage
            .FirebaseStorage.instance
            .ref()
            .child('Foto Profile Anak')
            .child(fileName);

        firebase_storage.UploadTask uploadTask = ref.putFile(foto);

        firebase_storage.TaskSnapshot snapshot =
            await uploadTask.whenComplete(() => null);

        imageUrl = await ref.getDownloadURL();
      }

      ProfileAnakModel profileAnakModel = profileAnak.copyWith(foto: imageUrl);

      _anakCollection.add(profileAnakModel.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<List<ProfileAnakModel>> getProfileAnak(String id) async {
    try {
      List<ProfileAnakModel> data = [];
      QuerySnapshot maps =
          await _anakCollection.where('userId', isEqualTo: id).get();

      for (var item in maps.docs) {
        data.add(
          ProfileAnakModel(
            userId: id,
            foto: item['foto'],
            namaAnak: item['namaAnak'],
            jenisKelamin: item['jenisKelamin'],
            tanggalLahri: item['tanggalLahri'],
            umurAnak: item['umurAnak'],
          ),
        );
      }
      return data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<ProfileAnakModel>> getAllProfileAnak() async {
    try {
      List<ProfileAnakModel> data = [];
      QuerySnapshot maps = await _anakCollection.get();

      for (var item in maps.docs) {
        data.add(
          ProfileAnakModel(
            // userId: id,
            foto: item['foto'],
            namaAnak: item['namaAnak'],
            jenisKelamin: item['jenisKelamin'],
            tanggalLahri: item['tanggalLahri'],
            umurAnak: item['umurAnak'],
          ),
        );
      }
      return data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<UserModel>> getAllUser() async {
    try {
      List<UserModel> data = [];
      QuerySnapshot maps = await _userCollection.get();

      for (var item in maps.docs) {
        data.add(
          UserModel(
            id: item.id,
            nama: item['nama'],
            namaLengkap: item['namaLengkap'],
            email: item['email'],
            role: item['role'],
            alamat: item['alamat'],
          ),
        );
      }
      return data;
    } catch (e) {
      rethrow;
    }
  }

  // * ...

  static Future<void> inputGiziAnak(DataGiziAnakModel dataGiziAnakModel) async {
    try {
      giziAnakCollection.add(dataGiziAnakModel.toJson());
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<DataGiziAnakModel>> getListGiziAnak({
    required String id,
    required String namaAnak,
  }) async {
    try {
      List<DataGiziAnakModel> data = [];
      QuerySnapshot maps = await giziAnakCollection
          .where('userId', isEqualTo: id)
          .where('namaAnak', isEqualTo: namaAnak)
          .orderBy('tanggal', descending: true)
          .get();

      for (var item in maps.docs) {
        data.add(DataGiziAnakModel(
          userId: item['userId'],
          beratBadan: item['beratBadan'],
          namaAnak: item['namaAnak'],
          statusGizi: item['statusGizi'],
          tanggal: item['tanggal'],
          tinggi: item['tinggi'],
          umur: item['umur'],
          statusBerat: item['statusBerat'],
          statusTinggi: item['statusTinggi'],
        ));
      }
      return data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> deleteProfileAnak(String id, String namaAnak) async {
    try {
      final snapshot = await _anakCollection
          .where('userId', isEqualTo: id)
          .where('namaAnak', isEqualTo: namaAnak)
          .get();

      print(snapshot.size);
      if (snapshot.size == 1) {
        await snapshot.docs.first.reference.delete();
      }
    } catch (e) {
      rethrow;
    }
  }
}
