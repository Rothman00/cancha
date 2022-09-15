import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/registro_controller.dart';

final registro = Get.find<RegistroController>();

Widget botonRegistroNuevo() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
      onPressed: () {
        print("DATOS : ${registro.datos()}");
        Get.snackbar("DATOS DE REGISTRO", registro.datos());
      },
      child: const Text(
        "REGISTRAR",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}
