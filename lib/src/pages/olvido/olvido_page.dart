import 'package:cancha/src/pages/olvido/controllers/olvido_controller.dart';
import 'package:cancha/src/pages/olvido/widget/boton_olvido.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/widget/app_bar.dart';
import '../registro/widget/input_r.dart';

class OlvidoPage extends StatelessWidget {
  OlvidoPage({Key? key}) : super(key: key);
  final olvido = Get.put(OlvidoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => ListView(
            children: [
              appBarPer(),
              const SizedBox(height: 50),
              inputEmail(
                olvido.email.value,
                texto: "EMAIL",
                icono: const Icon(Icons.email),
              ),
              botonRecuperar(),
            ],
          ),
        ),
      ),
    );
  }
}
