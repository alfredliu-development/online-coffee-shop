import 'package:flutter/material.dart';
import 'package:online_coffee_shop/navigator/order_menu/list.dart';

class OrderMenuDetail extends StatefulWidget {
  final OrderMenuList orderMenuList;
  const OrderMenuDetail({super.key, required this.orderMenuList});

  @override
  State<OrderMenuDetail> createState() => _OrderMenuDetailState();
}

class _OrderMenuDetailState extends State<OrderMenuDetail> {
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: Offset(13, 10)
                    )
                  ]
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/image/coffee_name.jpg"),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              widget.orderMenuList.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Decol'
              ),
            )
          ],
        ),
      ),
    );
  }
}