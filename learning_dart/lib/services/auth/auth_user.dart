import 'package:firebase_auth/firebase_auth.dart' as FirebaseAuth show User;
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  final String? email;
  final bool isEmailVerified;

  const AuthUser({
    required this.isEmailVerified,
    required this.email,
  });

  //factory constructor
  factory AuthUser.fromFirebase(FirebaseAuth.User user) => AuthUser(
        email: user.email,
        isEmailVerified: user.emailVerified,
      );
}
