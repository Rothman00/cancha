import 'package:cancha/src/pages/olvido/controllers/olvido_controller.dart';
import 'package:cancha/src/pages/olvido/widget/boton_olvido.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/widget/app_bar.dart';
import '../registro/widget/input_r.dart';

class CodigoPage extends StatelessWidget {
  CodigoPage({Key? key}) : super(key: key);
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
              inputTexto(
                olvido.texto.value,
                texto: "CÓDIGO",
                icono: const Icon(Icons.qr_code_sharp),
              ),
              botonCodigo(),
            ],
          ),
        ),
      ),
    );
  }
}
