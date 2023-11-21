import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resume_builder_app/models/resume_model.dart';

class FirestoreServices {
  final CollectionReference usersCollection =
  FirebaseFirestore.instance.collection('users');

  Future<void> addUser(ResumeModel user) async {
    return await usersCollection.add(user.toMap())
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Stream<List<ResumeModel>> getUsers() {
    return usersCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>?; // Explicitly cast to Map<String, dynamic> or nullable
        return data != null ? ResumeModel.fromMap(data) : ResumeModel(); // Handle nullable case
      }).toList();
    });
  }
}