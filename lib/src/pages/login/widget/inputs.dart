import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../../../utils/constans.dart';

final login = Get.find<LoginController>();

Widget inputUsuario() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: primarioColor()),
      ),
      child: Obx(
        () => TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: const Icon(Icons.person_sharp),
            labelText: "USUARIO",
            labelStyle: TextStyle(color: secundarioColor()),
          ),
          controller: login.usuario.value,
        ),
      ),
    ),
  );
}

Widget inputContrasena() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: primarioColor()),
      ),
      child: Obx(
        () => TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: const Icon(Icons.password),
            suffixIcon: InkWell(
              onTap: () => login.ocultoVis(),
              child: login.opcPass.value
                  ? const Icon(Icons.remove_red_eye)
                  : const Icon(Icons.no_encryption_gmailerrorred),
            ),
            labelText: "CONTRASEÑA",
            labelStyle: TextStyle(color: secundarioColor()),
          ),
          obscureText: login.opcPass.value,
          controller: login.password.value,
        ),
      ),
    ),
  );
}
