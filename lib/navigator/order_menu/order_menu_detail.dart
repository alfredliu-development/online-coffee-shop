import 'package:flutter/material.dart';
import 'package:online_coffee_shop/navigator/order_menu/list.dart';

class OrderMenuDetail extends StatefulWidget {
  final OrderMenuList orderMenuList;
  const OrderMenuDetail({super.key, required this.orderMenuList});

  @override
  State<OrderMenuDetail> createState() => _OrderMenuDetailState();
}

class _OrderMenuDetailState extends State<OrderMenuDetail> {
  late String? selectOption = widget.orderMenuList.lengthPrice.values.first.toString();
  late String? selectSugar = widget.orderMenuList.sugarPercent.values.first.toString();

  late double price = 0;
  late double lengthPrice = 0;
  late double sugarPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detail",
          style: TextStyle(
            fontFamily: 'Decol',
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 252, 227, 116),
            foregroundColor: Colors.white
          ),

          child: Text(
            "Price: $price",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Decol'
            ),
          ),

          onPressed: () {},
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: Offset(13, 15)
                    )
                  ]
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/image/coffee_name.jpg"),
                ),
              ),
            ),

            SizedBox(height: 30),
            Text(
              widget.orderMenuList.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Decol',
                fontSize: 26
              ),
            ),

            SizedBox(height: 25),
            chooseLengthPriceRadio(),

            SizedBox(height: 30),
            chooseSugarPriceRadio()
          ],
        ),
      ),
    );
  }

  Widget chooseLengthPriceRadio() {
    return Column(
      children: widget.orderMenuList.lengthPrice.entries.map((list) {
        return ListTile(
          title: Row(
            children: [
              Text(
                "${list.key}:",
                style: TextStyle(
                  fontFamily: 'Decol',
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),

              SizedBox(width: 20),
              Text(
                "Rp. ${list.value}K",
                style: TextStyle(
                  fontFamily: 'HarunoUmi',
                  color: Color.fromARGB(255, 205, 175, 39),
                  fontSize: 18
                ),
              )
            ],
          ),

          leading: Radio(
            value: list.value.toString(),
            groupValue: selectOption,
            onChanged: (value) {
              setState(() {
                selectOption = value.toString();
                lengthPrice = list.value;
                price = lengthPrice;
              });
            },
          ),
        );
      }).toList(),
    );
  }

  Widget chooseSugarPriceRadio() {
    price = lengthPrice;

    return Column(
      children: widget.orderMenuList.sugarPercent.entries.map((list) {
        return ListTile(
          title: Row(
            children: [
              Text(
                "${list.key}:",
                style: TextStyle(
                    fontFamily: 'Decol',
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),

              SizedBox(width: 20),
              Text(
                "Rp. ${list.value}K",
                style: TextStyle(
                    fontFamily: 'HarunoUmi',
                    color: Color.fromARGB(255, 205, 175, 39),
                    fontSize: 18
                ),
              )
            ],
          ),

          leading: Radio(
            value: list.value.toString(),
            groupValue: selectSugar,
            onChanged: (value) {
              setState(() {
                selectSugar = value.toString();
                sugarPrice = list.value;
                price += sugarPrice;
              });
            },
          ),
        );
      }).toList(),
    );
  }
}