import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:math_wizard_mk2/ubahAvatar.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:image_picker/image_picker.dart';

class DatabasesServices {
  final String uid;
  DatabasesServices({this.uid});
  

  final CollectionReference userCollection =
      Firestore.instance.collection('users');

//SIMPAN USERNAME DI DATABASE USER
  Future createuser(String username) async {
    return await userCollection.document(uid).setData({'name': username});
  }

  static Future<String> uploadImage(File imageFile) async {
    String fileName = basename(imageFile.path);

    StorageReference ref = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask task = ref.putFile(imageFile);
    StorageTaskSnapshot snapshot = await task.onComplete;

    return await snapshot.ref.getDownloadURL();
  }
}

class crudMethods {
  bool isLoggedIn() {
    if (FirebaseAuth.instance.currentUser() != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> addData(userData) async {
    // if (isLoggedIn()) {
      Firestore.instance.collection('Users').add(userData).catchError((e) {
        print(e);
      });
    // }
    // else
    // {
    //   print("Must Login");
    // }
  }
  getData()async{
    return await Firestore.instance.collection('Users').getDocuments();
  }
}

