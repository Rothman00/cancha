import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClubPage extends StatelessWidget {
  const ClubPage({Key? key}) : super(key: key);

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
        title: const Text("LISTA DE CLUBES"),
        centerTitle: true,
      ),
    );
  }
}
