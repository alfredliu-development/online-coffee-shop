import 'package:flutter/material.dart';
import 'package:online_coffee_shop/menu_bar/bottom_navigation_menu.dart';
import 'package:online_coffee_shop/menu_bar/drawer_menu.dart';
import 'package:online_coffee_shop/navigator/notif/list.dart';
import 'package:online_coffee_shop/navigator/notif/notif_detail.dart';

class NotifBar extends StatefulWidget {
  const NotifBar({super.key});

  @override
  State<NotifBar> createState() => _NotifBarState();
}

class _NotifBarState extends State<NotifBar> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "coffee Shop",
          style: TextStyle(
            fontFamily: 'HarunoUmi',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      drawer: DrawerMenu(),
      bottomNavigationBar: BottomNavigationMenu(index: 1),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final notifList = listNotif[index];
            return Container(
              margin: EdgeInsets.only(top: 25),
              child: InkWell(
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          notifList.title,
                          style: TextStyle(
                            fontFamily: 'Decol',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Text(
                              notifList.dateTitle,
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'HarunoUmi',
                              ),
                            ),

                            startButton(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => NotifDetail(notifList: notifList),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    )
                  );
                },
              ),
            );
          },
        
          itemCount: listNotif.length,
        ),
      ),
    );
  }

  Widget startButton() {
    return IconButton(
      icon: check
          ? Icon(Icons.star, key: ValueKey(1), color: Colors.yellow)
          : Icon(Icons.star_border, key: ValueKey(2), color: Colors.black54),

      onPressed: () => setState(() => check = !check),
    );
  }
}