
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabasesServices{
static Future<String> uploadImage(File imageFile)async{
  String filename=basename(imageFile.path);


StorageReference ref = FirebaseStorage.instance.ref().child(filename);
StorageUploadTask task = ref.putFile(imageFile);

StorageTaskSnapshot snapshot = await task.onComplete;


await snapshot.ref.getDownloadURL();


}


}
