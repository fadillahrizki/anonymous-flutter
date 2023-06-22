import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User userLoggedIn = User(
    name: "User",
    email: "user@mail.com",
    phone: "082222222222",
    birthDate: "01/01/2002",
    password: "user",
  );
}

class User {
  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.birthDate,
    required this.password,
  });
  String name, email, phone, birthDate, password;
}
