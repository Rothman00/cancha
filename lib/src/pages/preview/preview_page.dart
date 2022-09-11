import 'package:flutter/material.dart';

import '../preview/widgets/botonLogin.dart';
import '../preview/widgets/logo2_5.dart';
import '../../utils/constans.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secundarioColor(),
      body: Stack(children: [
        temaMitad(),
        contenido(),
      ]),
    );
  }

  Widget temaMitad() {
    return Container(
      color: primarioColor(),
      width: gWidth * 0.5,
      height: double.infinity,
    );
  }

  Widget contenido() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(height: gHeight * 0.25),
          logoImagenBlanca(),
          SizedBox(height: gHeight * 0.25),
          botonNegroLogin(),
          SizedBox(height: gHeight * 0.1),
          textoBotonInicio(),
        ],
      ),
    );
  }
}
