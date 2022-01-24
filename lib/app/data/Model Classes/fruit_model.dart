class Fruit {
  final String name;
  final String image;
  final String size;
  final String price;

  Fruit(
      {required this.name,
      required this.image,
      required this.size,
      required this.price});

  factory Fruit.fromJson(Map<String, dynamic> json) {
    return Fruit(
        name: json['name'],
        image: json['image'],
        size: json['size'],
        price: json['price']);
  }
}

class FruitList {
  final List<Fruit> fruitContainer;

  FruitList({required this.fruitContainer});

  factory FruitList.fromJson(List<dynamic> parsedJson) {
    List<Fruit> _container = <Fruit>[];

    _container = parsedJson.map((data) => Fruit.fromJson(data)).toList();

    return FruitList(fruitContainer: _container);
  }
}
