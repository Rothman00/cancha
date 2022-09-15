import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegistroController extends GetxController {
  var nombre = TextEditingController().obs;
  var apellido = TextEditingController().obs;
  var email = TextEditingController().obs;
  var telefono = TextEditingController().obs;
  var pais = "Ecuador".obs;
  var docum = TextEditingController().obs;
  var clave = TextEditingController().obs;
  var repCl = TextEditingController().obs;
  var acept = TextEditingController().obs;
  var opcC = true.obs;
  var opcR = true.obs;

  void cambioC() => opcC.value = !opcC.value;
  void cambioR() => opcR.value = !opcR.value;
  void cambioP(String? v) => pais.value = v!;

  String datos() => """
  Nombre: ${nombre.value.text}, 
  Apellido: ${apellido.value.text}, 
  Email: ${email.value.text}, 
  Teléfono: ${telefono.value.text},
  País: ${pais.value},
  Documento: ${docum.value.text},
  Clave: ${clave.value.text},
  Repetir: ${repCl.value.text},
  Correcto: ${clave.value.text == repCl.value.text}
""";
}
