import 'package:cancha/src/models/item_deporte_model.dart';
import 'package:get/get.dart';

class DeporteController extends GetxController {
  var lista = [
    ItemDeporteModel(
      img: "assets/images/png/basketball.png",
      tex: "BASQUET",
      url: "basquet",
    ),
    ItemDeporteModel(
      img: "assets/images/png/soccer.png",
      tex: "FÚTBOL",
      url: "futbol",
    ),
    ItemDeporteModel(
      img: "assets/images/png/tenis.png",
      tex: "TENIS",
      url: "tenis",
    ),
    ItemDeporteModel(
      img: "assets/images/png/volleyball.png",
      tex: "VOLLEY",
      url: "volley",
    ),
  ].obs;
}
