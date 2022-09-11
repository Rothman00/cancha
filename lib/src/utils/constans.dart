import 'package:get/get.dart';
import 'package:flutter/material.dart';

MaterialColor generateColor(Color color) {
  final Map<int, Color> swatch = {};
  for (int i = 0; i < 10; i++) {
    late int key;
    if (i == 0) {
      key = 50;
    } else {
      key = i * 100;
    }
    final opacity = (0.1 * i) + 0.1;
    swatch[key] = Color.fromRGBO(color.red, color.green, color.blue, opacity);
  }
  return MaterialColor(color.value, swatch);
}

Color primarioColor() => const Color.fromRGBO(128, 185, 24, 1);
Color secundarioColor() => const Color.fromRGBO(0, 127, 95, 1);

final gWidth = Get.width;
final gHeight = Get.height;