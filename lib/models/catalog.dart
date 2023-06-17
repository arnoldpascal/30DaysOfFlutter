class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iphone 12 Pro",
      desc: "Apple iphone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://media.mobex.in/media/catalog/product/cache/0e8fa5907f13de785507bb9c529c3575/a/p/apple_iphone_12_pro_pacific_blue_256_gb_1.jpg",
    )
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
