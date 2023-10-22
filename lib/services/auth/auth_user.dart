import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/material.dart';

@immutable
class AuthUser {
  final bool isEmailVeried;

  const AuthUser({required this.isEmailVeried});

  factory AuthUser.fromFirebase(User user) => AuthUser(
        isEmailVeried: user.emailVerified,
      );
}
