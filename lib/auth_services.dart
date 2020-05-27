import 'package:flutter/services.dart';
import 'globals.dart' as globals;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:math_wizard_mk2/database_services.dart';

class AuthProvider {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  static CollectionReference userCollection =
      Firestore.instance.collection('Users');

//fungsi login dengan email
  Future<bool> signInWithEmail(String email, String password) async {
    try {
      //me-null kan variable globals dari akun google
      globals.currentimageemail =
          'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon1.png?alt=media&token=59932303-aada-4d47-ba1b-dc09f32b35c8';
      globals.currentgooglecoin = null;
      globals.currentgooglescore = null;
      globals.currentaccountgoogle = null;

      //login dengan email membutuhkan email dan password
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;

      //mencari nilai coin di firebase
      Firestore.instance
          .collection("Users")
          .where('Email', isEqualTo: user.email)
          .snapshots()
          .listen((data) => data.documents
              .forEach((doc) => globals.currentemailcoin = (doc["coin"])));

      //mencari nilai score di firebase
      Firestore.instance
          .collection("Users")
          .where('Email', isEqualTo: user.email)
          .snapshots()
          .listen((data) => data.documents
              .forEach((doc) => globals.currentemailscore = (doc["score"])));

      //mencari nilai image di firebase
      Firestore.instance
          .collection("Users")
          .where('Email', isEqualTo: user.email)
          .snapshots()
          .listen((data) => data.documents
              .forEach((doc) => globals.currentimageemail = (doc["image"])));

      //mencari nilai username di firebase
      Firestore.instance
          .collection("Users")
          .where('Email', isEqualTo: user.email)
          .snapshots()
          .listen((data) => data.documents.forEach(
              (doc) => globals.currentaccountemail = (doc["Username"])));

      //mencari nilai documentID di firebase
      Firestore.instance
          .collection("Users")
          .where('Email', isEqualTo: user.email)
          .snapshots()
          .listen((data) => data.documents
              .forEach((doc) => globals.currentidaccount = (doc.documentID)));

      globals.eror = false;

      if (user != null)
        return true;
      else
        return false;
    } catch (SignUpEror) {
      if (SignUpEror is PlatformException) {
        if (SignUpEror.code == 'ERROR_USER_NOT_FOUND' ||
            SignUpEror.code == 'ERROR_WRONG_PASSWORD') {
          globals.eror = true;
        }
      }
      return false;
    }
  }

  // BUAT AKUN DENGAN EMAIL
  Future<bool> signUpWithEmail(
      String email, String password, String username) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;

      globals.eror = false;

      if (user != null)
        return true;
      else
        return false;
    } catch (SignUpEror) {
      if (SignUpEror is PlatformException) {
        if (SignUpEror.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
          globals.eror = true;
        }
      }
      return false;
    }
  }

//LOG OUT
  Future<void> logOut() async {
    try {
      await googleSignIn.signOut();
      await _auth.signOut();

      globals.currentaccountgoogle = null;
      globals.currentaccountemail = null;
      globals.currentimagegoogle = null;
      globals.currentimageemail = null;
      globals.currentgooglecoin = 0;
      globals.currentgooglescore = 0;
      globals.currentemailcoin = 0;
      globals.currentemailscore = 0;

      print("sign out berhasil");
    } catch (e) {
      print("error logging out");
    }
  }

//LOGIN GOOGLE
  Future<bool> loginWithGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount account = await googleSignIn.signIn();

    //untuk pertama kali login dengan akun google
    globals.currentimagegoogle = 'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon1.png?alt=media&token=59932303-aada-4d47-ba1b-dc09f32b35c8';
    globals.currentgooglecoin = 0;
    globals.currentgooglescore = 0;
    globals.currentemailcoin = null;
    globals.currentemailscore = null;
    globals.currentaccountemail = null;
    globals.currentaccountgoogle = account.displayName;

    //sudah pernah login dengan akun google
    //mencari nilai score
    Firestore.instance
        .collection("Users")
        .where('Email', isEqualTo: account.email)
        .snapshots()
        .listen((data) => data.documents
            .forEach((doc) => globals.currentgooglescore = (doc["score"])));

    //mencari nilai coin
    Firestore.instance
        .collection("Users")
        .where('Email', isEqualTo: account.email)
        .snapshots()
        .listen((data) => data.documents
            .forEach((doc) => globals.currentgooglecoin = (doc["coin"])));

    //mencari nilai image
    Firestore.instance
        .collection("Users")
        .where('Email', isEqualTo: account.email)
        .snapshots()
        .listen((data) => data.documents
            .forEach((doc) => globals.currentimagegoogle = (doc["image"])));

    //mencari nilai username
    Firestore.instance
        .collection("Users")
        .where('Email', isEqualTo: account.email)
        .snapshots()
        .listen((data) => data.documents.forEach(
            (doc) => globals.currentaccountgoogle = (doc["Username"])));

    try {
      GoogleSignIn googleSignIn = GoogleSignIn();
      GoogleSignInAccount account = await googleSignIn.signIn();
      if (account == null) return false;

      print("login berhasil");
      print("Username: ${account.displayName}");

      //memasukkan data ke dalam database
      addUserGoogle(account.id,
          displayname: globals.currentaccountgoogle,
          email: account.email,
          score: globals.currentgooglescore,
          coin: globals.currentgooglecoin,
          image: globals.currentimagegoogle);

      // mencari id document
      Firestore.instance
          .collection("Users")
          .where('Email', isEqualTo: account.email)
          .snapshots()
          .listen((data) => data.documents
              .forEach((doc) => globals.currentidaccount = (doc.documentID)));

      AuthResult res =
          await _auth.signInWithCredential(GoogleAuthProvider.getCredential(
        idToken: (await account.authentication).idToken,
        accessToken: (await account.authentication).accessToken,
      ));
      if (res.user == null) return false;
      return true;
    } catch (e) {
      print(e.message);
      print("Error logging with google");
      return false;
    }
  }

  //RESET PASSWORD

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);

      globals.eror = false;
    } catch (SignUpEror) {
      if (SignUpEror is PlatformException) {
        if (SignUpEror.code == 'ERROR_USER_NOT_FOUND') {
          globals.eror = true;
        }
      }
    }
  }

//fungsi memasukkan data user google ke database
  static Future<void> addUserGoogle(String id,
      {String displayname,
      String email,
      int score,
      int coin,
      String image}) async {
    await userCollection.document(id).setData({
      'Username': displayname,
      'Email': email,
      'score': globals.currentgooglescore,
      'coin': globals.currentgooglecoin,
      'image': globals.currentimagegoogle
    });
  }

//update nama user
  static Future<void> updateUser(String id, {String displayname}) async {
    await userCollection
        .document(id)
        .setData({'Username': displayname}, merge: true);
  }

//update coin dan score user
  static Future<void> updateUserscorecoin(String id,
      {int score, int coin}) async {
    await userCollection
        .document(id)
        .setData({'score': score, 'coin': coin}, merge: true);
  }

//update gambar user
  static Future<void> updateUserimage(String id, {String image}) async {
    await userCollection.document(id).setData({'image': image}, merge: true);
  }
}
