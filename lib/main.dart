import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/pages/preview/preview_page.dart';
import 'src/pages/login/login_page.dart';
import 'src/pages/home/home_page.dart';
import 'src/pages/deporte_page.dart';
import 'src/pages/club_page.dart';
import 'src/pages/map_page.dart';
import 'src/utils/constans.dart';

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
        primarySwatch: generateColor(primarioColor()),
        secondaryHeaderColor: secundarioColor(),
        fontFamily: 'ComicNeue',
      ),
      initialRoute: '/preview',
      getPages: [
        GetPage(name: '/preview', page: () => const PreviewPage()),
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/deporte', page: () => const DeportePage()),
        GetPage(name: '/club', page: () => const ClubPage()),
        GetPage(name: '/map', page: () => const MapPage()),
      ],
    );
  }
}
