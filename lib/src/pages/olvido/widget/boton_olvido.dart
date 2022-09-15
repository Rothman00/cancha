import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/olvido_controller.dart';

final olvido = Get.find<OlvidoController>();

Widget botonRecuperar() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
      onPressed: () {
        print("DATOS : ${olvido.datos()}");
        Get.snackbar("DATOS DE EMAIL", olvido.datos());
        Get.toNamed("/codigo");
      },
      child: const Text(
        "RECUPERAR",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget botonCodigo() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
      onPressed: () {
        print("DATOS : ${olvido.codigo()}");
        Get.snackbar("DATOS DE CODIGO", olvido.codigo());
        Get.toNamed("/newpass");
      },
      child: const Text(
        "VERIFICAR",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget botonVerificar() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
      onPressed: () {
        print("DATOS : ${olvido.verificado()}");
        Get.snackbar("DATOS DE CODIGO", olvido.verificado());
        Get.offAllNamed("/preview");
      },
      child: const Text(
        "CAMBIAR",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}
