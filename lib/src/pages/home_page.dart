import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  width: MediaQuery.of(context).size.width * 0.25,
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView(
              scrollDirection: Axis.horizontal,
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
      img    -> Nombre de imagen  128px
      text   -> Texto a colocar
      desc   -> Texto descripción
      link   -> Link de pagina a visitar
    */
    List<Map<String, dynamic>> datos = [
      {
        "img": "deportes.png",
        "text": "Deportes",
        "desc":
            "Selección de deporte, para la busqueda de canchas referentes al deporte a seleccionar.",
        "link": "/deporte",
      },
      {
        "img": "stadium.png",
        "text": "Clubes",
        "desc":
            "Selección por club de deporte, elije tu cancha favorita por medio de nuestros establecimientos.",
        "link": "/club",
      },
      {
        "img": "map.png",
        "text": "Ubicación",
        "desc":
            "Busqueda por medio de mi ubicación actual, encuentra tu cancha más cercana.",
        "link": "/map",
      },
    ];

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
    return InkWell(
      onTap: () => Get.toNamed(datos["link"]),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: opc ? primarioColor() : secundarioColor(),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      "assets/images/png/${datos['img']}",
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              left: MediaQuery.of(context).size.width * 0.1,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Text(
                      '${datos["text"]}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '${datos["desc"]}',
                      maxLines: 8,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
