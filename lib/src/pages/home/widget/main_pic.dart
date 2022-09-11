import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/animation_controller.dart';
import '../controllers/card_controller.dart';
import '../../../utils/constans.dart';


class MainPic extends StatelessWidget {
  final _cardController = Get.put(CardController());
  final _animeController = Get.put(ControllerAnimation());

  MainPic({super.key});

  @override
  Widget build(BuildContext context) {
    _animeController.runAnime();
    return Obx(
      () {
        return FadeTransition(
          opacity: _animeController.opacityAnime,
          child: ScaleTransition(
            scale: _animeController.scaleAnime,
            child: SizedBox(
              width: gWidth,
              height: gHeight / 1.6,
              child: Hero(
                tag: _cardController.currentIndex.value,
                child: Image.asset(
                  Get.find<CardController>()
                      .listCatalogo[_cardController.currentIndex.value]
                      .img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
