import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resume_builder_app/models/resume_model.dart';
import 'package:uuid/uuid.dart';

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

  Future<void> updateUser(String userId, Map<String, dynamic> newData) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).update(newData);
      print('User updated successfully');
    } catch (e) {
      print('Error updating user: $e');
    }
  }

  Future<void> deleteUserById(String documentId) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(documentId).delete();
      print('Document deleted successfully: $documentId');
    } catch (e, stackTrace) {
      print('Error deleting document: $e');
      print('Stack Trace: $stackTrace');
    }
  }


}