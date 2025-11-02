// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart';

// Future<String> uploadAvatar(File file, String userId) async {
//   final ref = FirebaseStorage.instance
//       .ref()
//       .child('avatars')
//       .child('$userId.jpg');

//   final uploadTask = ref.putFile(file);
//   final snapshot = await uploadTask;
//   final downloadUrl = await snapshot.ref.getDownloadURL();
//   return downloadUrl;
// }
