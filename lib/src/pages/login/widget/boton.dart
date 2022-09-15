import 'package:cancha/src/pages/login/controllers/login_controller.dart';
import 'package:cancha/src/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final login = Get.find<LoginController>();

Widget botonInicioSecion() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
      onPressed: () {
        print("USUARIO : ${login.usuarioText()}");
        print("PASSWORD : ${login.passwordText()}");
        Get.snackbar("USUARIO ATENTICADO",
            "USUARIO : ${login.usuarioText()}\nPASSWORD : ${login.passwordText()}");
      },
      child: const Text(
        "INICIAR SESIÓN",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget botonRegistro() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextButton(
      onPressed: () => Get.toNamed("/registro"),
      child: Text(
        "REGISTRO",
        style: TextStyle(
          color: primarioColor(),
        ),
      ),
    ),
  );
}
