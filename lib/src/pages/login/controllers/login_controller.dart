import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var usuario = TextEditingController().obs;
  var password = TextEditingController().obs;
  var opcPass = true.obs;

  /* @override
  void onInit() {
    super.onInit();
    opcPass.value = true;
    usuario.value = TextEditingController(text: "");
    password.value = TextEditingController(text: "");
  } */

  void ocultoVis() => opcPass.value = !opcPass.value;

  String usuarioText() => usuario.value.text;
  String passwordText() => password.value.text;
}
