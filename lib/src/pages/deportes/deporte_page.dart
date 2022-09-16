import 'package:cancha/src/pages/deportes/controllers/deporte_controller.dart';
import 'package:cancha/src/pages/deportes/widget/item_menu_deporte.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeportePage extends StatelessWidget {
  DeportePage({Key? key}) : super(key: key);
  final deporte = Get.put(DeporteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.person_rounded),
            onPressed: () => Get.toNamed("/login"),
          ),
        ],
        title: const Text("LISTA DE DEPORTES"),
        centerTitle: true,
      ),
      body: ListView(
        children: listaCompleta(),
      ),
    );
  }

  List<Widget> listaCompleta() {
    List<Widget> lista = [];
    bool opc = true;
    for (var element in deporte.lista) {
      lista.add(itemDeporte(element, opc));
      opc = !opc;
    }
    return lista;
  }
}
