import 'dart:convert';

import 'package:crypto/crypto.dart';

class PasswordModel {
  static const minLength = 8;
  static final RegExp passwordRegex = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%^&*(),.?":{}|<>]).{8,}$');

  static bool isValid(String password) {
    return passwordRegex.hasMatch(password);
  }

  static String? hash(String password){
    if(!isValid(password)){
      return null;
    }
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);
    return digest.toString();
  }
}
