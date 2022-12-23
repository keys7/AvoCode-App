import 'package:avocode/core/store.dart';
import 'package:avocode/pages/cart_page.dart';
import 'package:avocode/pages/home_page.dart';
import 'package:avocode/pages/link.dart';
import 'package:avocode/pages/login_page.dart';
import 'package:avocode/utilities/routes.dart';
import 'package:avocode/utilities/themes.dart';
import 'package:avocode/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const Link(),
      },
    );
  }
}
