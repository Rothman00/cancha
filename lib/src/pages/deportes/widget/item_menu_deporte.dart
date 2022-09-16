import 'package:cancha/src/models/item_deporte_model.dart';
import 'package:cancha/src/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget itemDeporte(ItemDeporteModel item, bool opc) {
  return InkWell(
    onTap: () => Get.toNamed("/club", arguments: item.url),
    child: Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: gHeight * 0.15,
      child: Stack(children: [
        Positioned(
          top: gHeight * 0.05,
          child: Container(
            height: gHeight * 0.10,
            width: gWidth - 40,
            decoration: BoxDecoration(
              color: opc ? primarioColor() : secundarioColor(),
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
            ),
          ),
        ),
        Positioned(
          top: gHeight * 0.04,
          child: Container(
            height: gHeight * 0.10,
            width: gWidth - 50,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: !opc ? primarioColor() : secundarioColor(),
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 25),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.tex,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          "Vamos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: gWidth * 0.5,
          child: SizedBox(
            height: gHeight * 0.15,
            width: gWidth * 0.35,
            child: Image.asset(
              item.img,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ]),
    ),
  );
}
