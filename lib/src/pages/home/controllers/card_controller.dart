import 'package:get/get.dart';

import '../../../models/categorias_model.dart';

class CardController extends GetxController {
  RxList<CategoriaModel> listCatalogo = [
    CategoriaModel(
      img: "assets/images/png/deportes.png",
      text: "DEPORTES",
      desc: "Selecciona el deporte en el que quieres alquilar tu cancha.",
      link: "/deporte",
    ),
    CategoriaModel(
      img: "assets/images/png/stadium.png",
      text: "CLUBES",
      desc: "Selección por club de deporte de tu preferencia.",
      link: "/club",
    ),
    CategoriaModel(
      img: "assets/images/png/map.png",
      text: "UBICACIÓN",
      desc: "Busca canchas cercanas a tí.",
      link: "/map",
    )
  ].obs;

  var optionIndex = true.obs;
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
    optionIndex.value = !optionIndex.value;
  }
}
