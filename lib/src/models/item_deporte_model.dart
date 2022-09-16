class ItemDeporteModel {
  final String img;
  final String tex;
  final String url;

  ItemDeporteModel({
    required this.img,
    required this.tex,
    required this.url,
  });

  factory ItemDeporteModel.fromJson(Map<String, String> json) =>
      ItemDeporteModel(
        img: json["img"] ?? "",
        tex: json["tex"] ?? "",
        url: json["url"] ?? "",
      );

  Map<String, String> toJson() => {
        "img": img,
        "tex": tex,
        "url": url,
      };
}
