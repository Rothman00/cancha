import 'package:cancha/src/pages/login/controllers/login_controller.dart';
import 'package:cancha/src/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final login = Get.find<LoginController>();

Widget botonInicioSecion() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
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

Widget botonOlvide() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: ElevatedButton(
      onPressed: () => Get.toNamed("/olvido"),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: Colors.black,
      ),
      child: const Text(
        "Olvidé mi contraseña",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
