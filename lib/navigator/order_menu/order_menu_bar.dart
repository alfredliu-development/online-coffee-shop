import 'package:flutter/material.dart';
import 'package:online_coffee_shop/menu_bar/bottom_navigation_menu.dart';
import 'package:online_coffee_shop/menu_bar/drawer_menu.dart';
import 'package:online_coffee_shop/navigator/order_menu/list.dart';
import 'package:online_coffee_shop/navigator/order_menu/order_menu_detail.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 1,
                children: listOrderMenu.map((menuList) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      color: Color.fromARGB(255, 233, 233, 233),
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/image/coffee_name.jpg",
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),

                            SizedBox(height: 20),
                            Text(
                              menuList.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontFamily: 'Decol'
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => OrderMenuDetail(orderMenuList: menuList),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        )
                      );
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}