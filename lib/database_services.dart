import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:math_wizard_mk2/globals.dart';
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
      Firestore.instance.collection('Users').add(userData).catchError((e) {
        print(e);
      });
  
  }
  getData()async{
    return await Firestore.instance.collection('Users').getDocuments();
  }




  
}

