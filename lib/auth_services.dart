import 'globals.dart' as globals;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:math_wizard_mk2/database_services.dart';

class AuthProvider {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  static CollectionReference userCollection =
      Firestore.instance.collection('Users');

//LOGIN DENGAN EMAIL
  Future<bool> signInWithEmail(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);    
      FirebaseUser user = result.user;
      
       Firestore.instance.collection("Users")
      .where('Email',isEqualTo:user.email).snapshots().listen((data)=>
      data.documents.forEach((doc)=>globals.currentaccountcoin = (doc["coin"])));
      
      Firestore.instance.collection("Users")
      .where('Email',isEqualTo:user.email).snapshots().listen((data)=>
      data.documents.forEach((doc)=>globals.currentaccountscore = (doc["score"])));

      Firestore.instance.collection("Users")
      .where('Email',isEqualTo:user.email).snapshots().listen((data)=>
      data.documents.forEach((doc)=>globals.currentaccountemail = (doc["Username"])));

      if (user != null)
        return true;
      else
        return false;
    } catch (e) {
      print(e.message);
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

      await DatabasesServices(uid: user.uid).createuser(username);

      // StreamBuilder(
      //       stream: Firestore.instance.collection('Users')
      //               .snapshots(),
      //                builder: (context, snapshot) {
      //                while (snapshot.data.documents[i]!=username)
      //                		return Text('Loading data.....');
      //                 return Text(
      //                          snapshot.data.documents[0]['username'],style: TextStyle(fontFamily: "Poppins-Medium",fontSize: 15),);
      //                           });

      if (user != null)
        return true;
      else
        return false;
    } catch (e) {
      print(e.message);
      return false;
    }
  }

//LOG OUT
  Future<void> logOut() async {
    try {
      await googleSignIn.signOut();
      await _auth.signOut();
      await _auth.signOut();
      print("sign out berhasil");
    } catch (e) {
      print("error logging out");
    }
  }

//LOGIN GOOGLE
  Future<bool> loginWithGoogle() async {
    try {
      GoogleSignIn googleSignIn = GoogleSignIn();
      GoogleSignInAccount account = await googleSignIn.signIn();
      if (account == null) return false;
      print("login berhasil");
      print("Username: ${account.displayName}");
      addUserGoogle(account.id,
          displayname: account.displayName, email: account.email);
      globals.currentaccountgoogle = account.displayName;

      Firestore.instance.collection("Users")
      .where('Email',isEqualTo:account.email).snapshots().listen((data)=>
      data.documents.forEach((doc)=>globals.currentaccountcoin = (doc["coin"])));

      Firestore.instance.collection("Users")
      .where('Email',isEqualTo:account.email).snapshots().listen((data)=>
      data.documents.forEach((doc)=>globals.currentaccountscore = (doc["score"])));

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

  Future sendPasswordResetEmail(String email) async {
    return _auth.sendPasswordResetEmail(email: email);
  }

  static Future<void> addUserGoogle(String id,
      {String displayname, String email}) async {
    await userCollection
        .document(id)
        .setData({'username': displayname, 'email': email});

  }








  
}




