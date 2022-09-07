import 'package:flutter/material.dart';
import 'package:cancha/src/utils/colors.dart';
import 'package:get/get.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Image.asset(
                    "assets/images/png/original.png",
                    fit: BoxFit.fill,
                  ),
                ),
                IconButton(
                  onPressed: () => Get.toNamed("/login"),
                  icon: const Icon(Icons.login),
                  color: primarioColor(),
                  hoverColor: secundarioColor(),
                  focusColor: secundarioColor(),
                  tooltip: "Ingresar",
                  iconSize: 40,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: menu(context),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> menu(BuildContext context) {
    /*
      Se necesita una List<Map<String, dynamic>> con los siguientes datos:
      img    -> Nombre de imagen
      text   -> Texto a colocar
    */
    final Map<String, dynamic> dato = {
      "img": "ejemplo.png",
      "text": "Deporte",
    };
    List<Map<String, dynamic>> datos = [dato, dato, dato, dato];

    late bool opc = true;
    late List<Widget> m = [];
    for (Map<String, dynamic> e in datos) {
      if (opc) {
        m.add(menuOpcion(context, opc, e));
        opc = false;
      } else {
        m.add(menuOpcion(context, opc, e));
        opc = true;
      }
    }
    return m;
  }

  Widget menuOpcion(
      BuildContext context, bool opc, Map<String, dynamic> datos) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      margin: EdgeInsets.fromLTRB(
          10, 0, 10, MediaQuery.of(context).size.height * 0.07),
      color: opc ? primarioColor() : secundarioColor(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              "assets/images/png/${datos['img']}",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              datos["text"],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
