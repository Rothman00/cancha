import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/card_controller.dart';
import '../../../utils/constans.dart';

// ignore: must_be_immutable
class MovieCard extends StatelessWidget {
  final CarouselController _carouselController = CarouselController();
  final _cardController = Get.find<CardController>();

  MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      height: gHeight * 0.7,
      width: gWidth,
      child: CarouselSlider(
        carouselController: _carouselController,
        options: CarouselOptions(
            height: gHeight / 1.6,
            aspectRatio: 16 / 9,
            viewportFraction: 0.75,
            enlargeCenterPage: true,
            onPageChanged: (index, _) {
              _cardController.changeIndex(index);
            }),
        items: _cardController.listCatalogo.map(
          (catalogo) {
            return Builder(
              builder: (ctx) {
                return InkWell(
                  onTap: () => Get.toNamed(catalogo.link),
                  child: Container(
                    width: gWidth,
                    decoration: BoxDecoration(
                        color: _cardController.optionIndex.value
                            ? primarioColor()
                            : secundarioColor(),
                        borderRadius: BorderRadius.circular(20)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            height: 300,
                            width: gWidth,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              catalogo.img,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            catalogo.text,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: gHeight * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              catalogo.desc,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: gHeight * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
