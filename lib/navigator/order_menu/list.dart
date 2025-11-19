class OrderMenuList {
  String image;
  String name;
  Map<String, double> lengthPrice;

  OrderMenuList({
    required this.image,
    required this.name,
    required this.lengthPrice
});
}

var listOrderMenu = [
  OrderMenuList(
    image: "assets/image/coffee_name.jpg",
    name: "Americano",
    lengthPrice: {
      "L": 45.0,
      "M": 40.0,
      "R": 31.2
    }
  ),
];