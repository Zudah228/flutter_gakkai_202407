import 'package:flutter/material.dart';

@immutable
class UserProfile {
  const UserProfile({
    required this.name,
    required this.age,
    this.gender,
  });

  final String name;
  final int age;
  final Gender? gender;
}

enum Gender {
  male,
  female,
  ;
}
