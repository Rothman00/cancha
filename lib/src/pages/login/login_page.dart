import 'package:cancha/src/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                  width: gWidth * 0.25,
                  height: gHeight * 0.1,
                  child: Image.asset(
                    "assets/images/png/original.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
