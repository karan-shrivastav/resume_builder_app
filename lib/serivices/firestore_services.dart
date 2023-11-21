import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resume_builder_app/models/user_model.dart';

class FirestoreServices {
  final CollectionReference usersCollection =
  FirebaseFirestore.instance.collection('users');

  Future<void> addUser(User user) async {
    return await usersCollection.add(user.toMap())
        .catchError((error) => print("Failed to add user: $error"));
  }

  Stream<List<User>> getUsers() {
    return usersCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>?; // Explicitly cast to Map<String, dynamic> or nullable
        return data != null ? User.fromMap(data) : User(); // Handle nullable case
      }).toList();
    });
  }
}