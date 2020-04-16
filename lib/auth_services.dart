import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> signInGoogle()async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;


     final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;

    print("Username: ${user.displayName}");
    return user;
  }

  static Future<FirebaseUser> signUp(
      String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
          FirebaseUser firebaseUser = result.user;
          return firebaseUser;
    } catch (e) {
      print(e.toString());
      return 
      null;
    }
   
  }
   static Future<FirebaseUser> signIn(String email,String password)async{
     try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
          FirebaseUser user = result.user;
          return user;
    } catch (e) {
      print(e.toString());
      return 
      null;
    }
   
  }
   

  static Future<void> signOut() async{
    _auth.signOut();
  }

static Stream<FirebaseUser> get FirebaseUserStream => _auth.onAuthStateChanged;
}
