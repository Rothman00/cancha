import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constans.dart';

Widget appBarPer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.chevron_left,
          size: gWidth * 0.12,
          color: primarioColor(),
        ),
        focusColor: secundarioColor(),
        hoverColor: secundarioColor(),
      ),
      SizedBox(
        width: gWidth * 0.35,
        height: gHeight * 0.15,
        child: Image.asset(
          "assets/images/png/original.png",
          fit: BoxFit.fill,
        ),
      ),
      const SizedBox(width: 10),
    ],
  );
}
