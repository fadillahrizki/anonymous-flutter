import 'package:anonymous/components/home/main.dart';
import 'package:anonymous/components/home/need_ktp.dart';
import 'package:anonymous/components/home/new_user.dart';
import 'package:anonymous/components/home/rejected.dart';
import 'package:anonymous/components/home/waiting_confirm.dart';
import 'package:anonymous/providers/auth.dart';
import 'package:anonymous/providers/category.dart';
import 'package:anonymous/providers/product.dart';
import 'package:anonymous/providers/store.dart';
import 'package:anonymous/providers/user.dart';
import 'package:anonymous/screens/auth/otp.dart';
import 'package:anonymous/screens/category/detail_category.dart';
import 'package:anonymous/screens/category/list_category.dart';
import 'package:anonymous/screens/home.dart';
import 'package:anonymous/screens/auth/login.dart';
import 'package:anonymous/screens/auth/register.dart';
import 'package:anonymous/screens/products/add_product.dart';
import 'package:anonymous/screens/products/detail_product.dart';
import 'package:anonymous/screens/products/product_list.dart';
import 'package:anonymous/screens/profile.dart';
import 'package:anonymous/screens/store/create_store.dart';
import 'package:anonymous/screens/store/detail_staff.dart';
import 'package:anonymous/screens/store/detail_store.dart';
import 'package:anonymous/screens/store/detail_user.dart';
import 'package:anonymous/screens/store/join_store.dart';
import 'package:anonymous/screens/store/join_store_success.dart';
import 'package:anonymous/screens/store/qr_store.dart';
import 'package:anonymous/screens/store/staff_store.dart';
import 'package:anonymous/screens/store/user_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AuthProvider()),
    ChangeNotifierProvider(create: (_) => ProductProvider()),
    ChangeNotifierProvider(create: (_) => CategoryProvider()),
    ChangeNotifierProvider(create: (_) => StoreProvider()),
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Anonymous",
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(
              content: MainHome(),
              title: 'Home',
            ),
        '/new-user': (context) => const Home(
              content: NewUser(),
              title: 'Home (New User)',
            ),
        '/need-ktp': (context) => const Home(
              content: NeedKtp(),
              title: 'Home (Need KTP)',
            ),
        '/rejected': (context) => const Home(
              content: Rejected(),
              title: 'Home (Rejected)',
            ),
        '/waiting-confirm': (context) => const Home(
              content: WaitingConfirm(),
              title: 'Home (Waiting Confirm)',
            ),
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
        '/otp': (context) => const Otp(),
        '/profile': (context) => const Profile(),
        '/store/join/success': (context) => const JoinStoreSuccess(),
        '/store/create': (context) => const CreateStore(),
        '/store/join': (context) => const JoinStore(),
        '/store/detail': (context) => const DetailStore(),
        '/store/qr': (context) => const QrStore(),
        '/store/staff/detail': (context) => const DetailStaff(),
        '/store/staff': (context) => const StaffStore(),
        '/store/user/detail': (context) => const DetailUser(),
        '/store/user': (context) => const UserStore(),
        '/product': (context) => const ListProduct(),
        '/category': (context) => const ListCategory(),
        '/category/detail': (context) => const DetailCategory(),
        '/product/add': (context) => const AddProduct(),
        '/product/detail': (context) => const DetailProduct(),
      },
    );
  }
}
