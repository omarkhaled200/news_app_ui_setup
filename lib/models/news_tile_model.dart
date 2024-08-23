class NewsTileModel {
  final String texttitle;
  final String? textsubtitle;
  final String? image;

  const NewsTileModel(
      {required this.image,
      required this.texttitle,
      required this.textsubtitle});
      
  factory NewsTileModel.fromJson(json) {
    return NewsTileModel(
        image: json["image_url"],
        texttitle: json["title"],
        textsubtitle: json["description"]);
  }
}
