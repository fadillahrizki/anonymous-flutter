import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  List<User> users = [
    User(
      name: "Owner",
      email: "owner@gmail.com",
      phone: "082222222221",
      birthDate: "01/01/2001",
      password: "owner123",
      role: "owner",
    ),
    User(
      name: "Staff",
      email: "staff@gmail.com",
      phone: "082222222222",
      birthDate: "01/01/2002",
      password: "staff123",
      role: "staff",
    ),
    User(
      name: "New User",
      email: "newuser@gmail.com",
      phone: "082222222223",
      birthDate: "01/01/2003",
      password: "newuser123",
      role: "new-user",
    ),
    User(
      name: "Waiting Confirm User",
      email: "waitingconfirm@gmail.com",
      phone: "082222222224",
      birthDate: "01/01/2004",
      password: "waiting123",
      role: "waiting-confirm",
    ),
    User(
      name: "Rejected User",
      email: "rejected@gmail.com",
      phone: "082222222225",
      birthDate: "01/01/2005",
      password: "rejected123",
      role: "rejected",
    ),
    User(
      name: "Need KTP User",
      email: "needktp@gmail.com",
      phone: "082222222226",
      birthDate: "01/01/2006",
      password: "password123",
      role: "need-ktp",
    ),
  ];
}

class User {
  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.birthDate,
    required this.password,
    required this.role,
  });
  String name, email, phone, birthDate, password, role;
}
