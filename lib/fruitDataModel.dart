class fruitDataModel {
  String? genus;
  String? name;
  int? id;
  String? family;
  String? order;
  String? imgurl;
  Object? nutritions;

  fruitDataModel(
      {this.genus,
      this.name,
      this.id,
      this.family,
      this.order,
      this.imgurl,
      this.nutritions});

  fruitDataModel.fromJson(Map<String, dynamic> json) {
    genus = json['genus'];
    name = json['name'];
    id = json['id'];
    family = json['family'];
    order = json['order'];
    imgurl=json['imgurl'];
    nutritions = json['nutritions'];
  }
}
