import 'package:anonymous/providers/user.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider(this.userProvider);

  late User userLoggedIn;
  final UserProvider userProvider;

  login(email, password) {
    List<User> users = userProvider.users;

    var result =
        users.where((user) => user.email == email && user.password == password);

    if (result.isNotEmpty) {
      userLoggedIn = result.first;
      notifyListeners();
      return true;
    } else {
      return false;
    }
  }

  register(User user) {
    userProvider.users.add(user);
    userLoggedIn = user;
    notifyListeners();
    return true;
  }
}
