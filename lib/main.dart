import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/pages/registro/registro_page.dart';
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
        GetPage(
          name: '/preview',
          page: () => const PreviewPage(),
          transition: Transition.circularReveal,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: '/home',
          page: () => const HomePage(),
          transition: Transition.zoom,
          transitionDuration: const Duration(seconds: 1),
        ),
        GetPage(
          name: '/login',
          page: () => LoginPage(),
          transition: Transition.size,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: '/registro',
          page: () => const RegistroPage(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: '/deporte',
          page: () => const DeportePage(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: '/club',
          page: () => const ClubPage(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: '/map',
          page: () => const MapPage(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 500),
        ),
      ],
    );
  }
}

/*
  TRANSICIONES PARA PAGINAS
  circularReveal: Circulo abriendo
  cupertino: Derecha a Izquierda
  cupertinoDialog: Desaparecer rapido
  downToUp: Abajo a Arriba rapido
  fade: Abajo a Arriba
  fadeIn: Desaparecer
  leftToRight: Izquierda a Derecha
  leftToRightWithFade: Izquierda a Derecha con desaparecer
  native: Aparecer rapido
  noTransition: Ninguno
  rightToLeft: Derecha a Izquierda
  rightToLeftWithFade: Derecha a Izquierda con desaparecer
  size: Abrir de arriba y abajo
  topLevel: Aparecer rapido
  upToDown: Arriba a Abajo
  zoom: Aparecer con zoom
*/
