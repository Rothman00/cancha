// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constans.dart';

Widget botonNegroLogin() {
  return ElevatedButton(
    onPressed: () => Get.offAllNamed("/home"),
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      backgroundColor: Colors.black,
      maximumSize: Size(
        gWidth * 0.4,
        gHeight * 0.1,
      ),
      elevation: 10,
      padding: const EdgeInsets.all(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "VAMOS",
          style: TextStyle(
            color: Colors.white,
            fontSize: gHeight * 0.03,
          ),
        ),
        const Icon(
          Icons.arrow_right_alt,
          color: Colors.white,
        ),
      ],
    ),
  );
}

Widget textoBotonInicio() {
  return TextButton(
    onPressed: () => Get.toNamed("/login"),
    child: Text(
      "INICIAR SESIÓN",
      style: TextStyle(
        color: Colors.white,
        fontSize: gHeight * 0.02,
      ),
    ),
  );
}
