import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OlvidoController extends GetxController {
  var email = TextEditingController().obs;
  var texto = TextEditingController().obs;
  var pass = TextEditingController().obs;
  var rept = TextEditingController().obs;
  var opcP = true.obs;
  var opcR = true.obs;

  void opcionP() => opcP.value = !opcP.value;
  void opcionR() => opcR.value = !opcR.value;

  String datos() => "EMAIL: ${email.value.text}";
  String codigo() => "CODIGO: ${texto.value.text}";
  String verificado() => """
  PASSWORD: ${pass.value.text},
  REPETIDO: ${rept.value.text},
  VERIFICA: ${pass.value.text == rept.value.text}
  """;
}
