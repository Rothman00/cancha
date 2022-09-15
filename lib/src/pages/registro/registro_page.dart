import 'package:flutter/material.dart';

import '../login/widget/appBar.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView(children: [
        appBarPer(),
      ],),
    ));
  }
}
