import 'package:flutter/material.dart';
import 'package:online_coffee_shop/menu_bar/bottom_navigation_menu.dart';
import 'package:online_coffee_shop/menu_bar/drawer_menu.dart';
import 'package:online_coffee_shop/navigator/notif/list.dart';

class NotifBar extends StatefulWidget {
  const NotifBar({super.key});

  @override
  State<NotifBar> createState() => _NotifBarState();
}

class _NotifBarState extends State<NotifBar> {
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
      bottomNavigationBar: BottomNavigationMenu(index: 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final notifList = listNotif[index];
                  return InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          notifList.title,
                          style: TextStyle(
                            fontFamily: 'Decol',
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}