class CategoriaModel {
  final String img;
  final String text;
  final String desc;
  final String link;

  CategoriaModel(
      {required this.img,
      required this.text,
      required this.desc,
      required this.link});

  factory CategoriaModel.fromJson(Map<String, String> json) => CategoriaModel(
        img: json["img"] ?? "",
        text: json["text"] ?? "",
        desc: json["desc"] ?? "",
        link: json["link"] ?? "",
      );
  Map<String, String> toJson() => {
    "img": img,
    "text": text,
    "desc": desc,
    "link": link,
  };
}
