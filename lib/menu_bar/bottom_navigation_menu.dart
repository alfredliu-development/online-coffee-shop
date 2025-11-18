import 'package:flutter/material.dart';
import 'package:online_coffee_shop/navigator/home/home_bar.dart';
import 'package:online_coffee_shop/navigator/notif_bar.dart';
import 'package:online_coffee_shop/navigator/order_menu_bar.dart';

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
          icon: Icon(Icons.notifications),
          label: "Your Notification"
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: "Your Menu"
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
              pageBuilder: (context, animation, secondaryAnimation) => NotifBar(),
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
              pageBuilder: (context, animation, secondaryAnimation) => OrderMenuBar(),
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
