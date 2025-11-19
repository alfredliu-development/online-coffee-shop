class OrderMenuList {
  String name;
  Map<String, double> lengthPrice;
  Map<String, double> sugarPercent;

  OrderMenuList({
    required this.name,
    required this.lengthPrice,
    required this.sugarPercent
});
}

var listOrderMenu = [
  OrderMenuList(
    name: "Americano",
    lengthPrice: {
      "L": 45.0,
      "M": 40.0,
      "R": 31.2
    },

    sugarPercent: {
      "0%": 0.0,
      "20%": 2.0,
      "70%": 4.0,
      "100%": 8.0
    }
  ),

  OrderMenuList(
    name: "Cappuccino",
      lengthPrice: {
        "L": 45.0,
        "M": 40.0,
        "R": 31.2
      },

      sugarPercent: {
        "0%": 0.0,
        "20%": 2.0,
        "70%": 4.0,
        "100%": 8.0
      }
  )
];