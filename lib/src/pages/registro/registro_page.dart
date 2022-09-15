import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/registro_controller.dart';
import '../login/widget/app_bar.dart';
import 'widget/boton_r.dart';
import 'widget/input_r.dart';

class RegistroPage extends StatelessWidget {
  RegistroPage({Key? key}) : super(key: key);
  final registro = Get.put(RegistroController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => ListView(
            children: [
              appBarPer(),
              inputTexto(
                registro.nombre.value,
                texto: "NOMBRE",
                icono: const Icon(Icons.person_sharp),
              ),
              inputTexto(
                registro.apellido.value,
                texto: "APELLIDO",
                icono: const Icon(Icons.person_sharp),
              ),
              inputEmail(
                registro.email.value,
                texto: "EMAIL",
                icono: const Icon(Icons.email),
              ),
              inputNumber10(
                registro.telefono.value,
                texto: "TELÉFONO",
                icono: const Icon(Icons.phone_android),
              ),
              dropPaises(registro.pais.value, registro.cambioP),
              inputTexto(
                registro.docum.value,
                texto: "IDENTIFICACIÓN",
                icono: const Icon(Icons.contacts),
              ),
              inputPassword(
                registro.clave.value,
                texto: "CONTRASEÑA",
                opc: registro.opcC.value,
                cambio: registro.cambioC,
              ),
              inputPassword(
                registro.repCl.value,
                texto: "REPETIR",
                opc: registro.opcR.value,
                cambio: registro.cambioR,
              ),
              botonRegistroNuevo(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
