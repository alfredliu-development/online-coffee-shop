import 'package:flutter/material.dart';
import 'package:online_coffee_shop/navigator/account_bar.dart';
import 'package:online_coffee_shop/navigator/payment_bar.dart';
import 'package:online_coffee_shop/sign_in.dart';
import 'package:online_coffee_shop/sign_up.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 21,
          vertical: 10
        ),

        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 30),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 30,
                    ),

                    title: Text(
                      "Person Account",
                      style: TextStyle(
                        fontFamily: 'Decol',
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),

                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => AccountBar(),
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

                  SizedBox(height: 18),
                  ListTile(
                    leading: Icon(
                      Icons.payments,
                      size: 30,
                    ),

                    title: Text(
                      "Your Payment",
                      style: TextStyle(
                          fontFamily: 'Decol',
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),

                    onTap: () {
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
                    },
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.black,
                      ),

                      SizedBox(width: 8),
                      Text(
                        "Your Name",
                        style: TextStyle(
                          fontFamily: 'HarunoUmi',
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ]
                  ),

                  IconButton(
                    icon: Icon(Icons.more_vert_rounded),
                    onPressed: () => _bottomAccountAbout(context),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _bottomAccountAbout(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: Colors.white60,
          ),

          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 23,
              horizontal: 20
            ),

            child: Column(
              children: [
                Text(
                  "Account Switch",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Decol'
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black38
                  ),

                  child: ListTile(
                    title: Text(
                      "Changes Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Decol',
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => SignUp(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        )
                      );
                    },
                  )
                ),

                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black38
                  ),

                  child: ListTile(
                    title: Text(
                      "Log out Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Decol'
                      ),
                    ),

                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => SignIn(),
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
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}