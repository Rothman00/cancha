import 'package:flutter/material.dart';

import '../../../utils/constans.dart';

Widget logoImagenBlanca() {
  return SizedBox(
    height: gHeight * 0.2,
    width: gWidth * 0.5,
    child: Image.asset(
      "assets/images/png/blanco.png",
      fit: BoxFit.fill,
    ),
  );
}
