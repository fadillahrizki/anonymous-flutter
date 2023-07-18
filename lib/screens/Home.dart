import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/home/main.dart';
import 'package:anonymous/components/home/need_ktp.dart';
import 'package:anonymous/components/home/new_user.dart';
import 'package:anonymous/components/home/rejected.dart';
import 'package:anonymous/components/home/staff.dart';
import 'package:anonymous/components/home/waiting_confirm.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:anonymous/providers/auth.dart';
import 'package:anonymous/providers/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);

    User userLoggedIn = authProvider.userLoggedIn;
    Widget content = Container();

    switch (userLoggedIn.role) {
      case "owner":
        content = MainHome();
        break;
      case "staff":
        content = Staff();
        break;
      case "new-user":
        content = NewUser();
        break;
      case "waiting-confirm":
        content = WaitingConfirm();
        break;
      case "rejected":
        content = Rejected();
        break;
      case "need-ktp":
        content = NeedKtp();
        break;
    }

    return Scaffold(
      appBar: CustomAppBar(title: "Home"),
      drawer: MyDrawer(active: "Home"),
      backgroundColor: CustomColor().background,
      body: content,
    );
  }
}
