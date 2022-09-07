import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cancha/src/utils/colors.dart';
import 'package:cancha/src/pages/home_page.dart';
import 'package:cancha/src/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pivotea',
      theme: ThemeData(
        primarySwatch: generateColor(const Color.fromRGBO(128, 185, 24, 1)),
        secondaryHeaderColor: const Color.fromRGBO(0, 127, 95, 1),
        fontFamily: 'ComicNeue',
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/login', page: () => const LoginPage()),
      ],
    );
  }
}
