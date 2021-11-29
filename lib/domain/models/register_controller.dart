// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Example code of how to sign in with email and password.
  void _signInWithEmailAndPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      ))
          .user!;
      Get.snackbar('', 'Ingreso exitoso');
      print("Ingreso");
      Future.delayed(
        Duration(seconds: 2),
        () {
          Get.toNamed("/feedpage");
        },
      );
    } catch (e) {
      Get.snackbar('', 'Error al inciar sesion, intenta nuevamente',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  /// Example code for sign out.
  void _signOut() async {
    await _auth.signOut();
  }

  void signOut() async {
    final User? user = await _auth.currentUser;
    if (user == null) {
      Get.snackbar('Out', 'No has iniciado sesion',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    _signOut();
    final String uid = user.uid;
    Get.snackbar('Out', uid + ' has cerrado sesion',
        snackPosition: SnackPosition.BOTTOM);
    Get.toNamed("/home");
  }
}

  //Example code of how to sign in with Google.
//  """void signInWithGoogle() async {
//    try {
//      UserCredential userCredential;
//
//      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
//      final GoogleSignInAuthentication googleAuth =
//          await googleUser.authentication;
//      final GoogleAuthCredential googleAuthCredential =
//          GoogleAuthProvider.credential(
//        accessToken: googleAuth.accessToken,
//        idToken: googleAuth.idToken,
//      );
//      userCredential = await _auth.signInWithCredential(googleAuthCredential);
//
//      final user = userCredential.user;
//      Get.snackbar('Ingreso, ${user.uid} with Google');
//      print("Ingreso");
//      Future.delayed(
//        Duration(seconds: 2),
//        () {
//          Get.toNamed("/feedpage");
//        },
//      );
//    } catch (e) {
//      print(e);
//      Get.snackbar('Failed to sign in with Google: $e',
//          snackPosition: SnackPosition.BOTTOM);
//    }
//  }"""
