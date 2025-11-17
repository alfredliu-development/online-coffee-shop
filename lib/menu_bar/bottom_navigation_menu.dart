import 'package:flutter/material.dart';
import 'package:online_coffee_shop/navigator/coffee_buy_bar.dart';
import 'package:online_coffee_shop/navigator/home_bar.dart';
import 'package:online_coffee_shop/navigator/payment_bar.dart';

class BottomNavigationMenu extends StatefulWidget {
  final int index;
  const BottomNavigationMenu({super.key, required this.index});

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => _onItemClick(index),
      currentIndex: widget.index,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.payment),
          label: "Your Payment"
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.coffee),
          label: "Coffee Buyer"
        )
      ],
    );
  }

  void _onItemClick(int index) {
    if (index == widget.index) return;
    switch (index) {
      case 0:
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => HomeBar(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          )
        );

      case 1:
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => PaymentBar(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            )
        );

      case 2:
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => CoffeeBuyBar(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            )
        );
    }
  }
}
