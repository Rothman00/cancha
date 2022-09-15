import 'package:cancha/src/pages/login/widget/boton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/app_bar.dart';
import 'widget/inputs.dart';
import 'controllers/login_controller.dart';
import 'package:cancha/src/utils/constans.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final login = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            appBarPer(),
            SizedBox(height: gHeight * 0.2),
            inputUsuario(),
            inputContrasena(),
            botonInicioSecion(),
            botonRegistro(),
            botonOlvide(),
          ],
        ),
      ),
    );
  }
}
