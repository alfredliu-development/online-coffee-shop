import 'package:flutter/material.dart';
import 'package:online_coffee_shop/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 252, 227, 116),
        ),

        drawerTheme: DrawerThemeData(
          shadowColor: Colors.black38,
          elevation: 10,
          surfaceTintColor: Color.fromARGB(255, 252, 227, 116)
        ),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 252, 227, 116),
          unselectedItemColor: Colors.black45,
          unselectedLabelStyle: TextStyle(
            fontFamily: 'Decol'
          ),
          // selectedIconTheme: IconThemeData(
          //   color: Colors.white,
          // ),

          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(
            // color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Decol'
          )
        )
      ),

      home: SignUp(),
    );
  }
}