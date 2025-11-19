import 'package:flutter/material.dart';
import 'package:online_coffee_shop/menu_bar/bottom_navigation_menu.dart';
import 'package:online_coffee_shop/menu_bar/drawer_menu.dart';

class OrderMenuBar extends StatefulWidget {
  const OrderMenuBar({super.key});

  @override
  State<OrderMenuBar> createState() => _OrderMenuBarState();
}

class _OrderMenuBarState extends State<OrderMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "coffee Shop",
          style: TextStyle(
              fontFamily: 'HarunoUmi',
              fontWeight: FontWeight.bold
          ),
        ),
      ),

      drawer: DrawerMenu(),
      bottomNavigationBar: BottomNavigationMenu(index: 2),
      body: SingleChildScrollView(
        child: ListView.builder(
          padding: EdgeInsets.all(23),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
          },
        ),
      ),
    );
  }
}