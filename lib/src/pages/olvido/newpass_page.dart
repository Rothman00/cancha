import 'package:cancha/src/pages/olvido/controllers/olvido_controller.dart';
import 'package:cancha/src/pages/olvido/widget/boton_olvido.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/widget/app_bar.dart';
import '../registro/widget/input_r.dart';

class NewPassPage extends StatelessWidget {
  NewPassPage({Key? key}) : super(key: key);
  final olvido = Get.find<OlvidoController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => ListView(
            children: [
              appBarPer(),
              const SizedBox(height: 50),
              inputPassword(
                olvido.pass.value,
                texto: "CONTRASEÑA",
                opc: olvido.opcP.value,
                cambio: olvido.opcionP,
              ),
              inputPassword(
                olvido.rept.value,
                texto: "REPETIR",
                opc: olvido.opcR.value,
                cambio: olvido.opcionR,
              ),
              botonVerificar(),
            ],
          ),
        ),
      ),
    );
  }
}
