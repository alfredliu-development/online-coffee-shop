import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:online_coffee_shop/menu_bar/bottom_navigation_menu.dart';
import 'package:online_coffee_shop/menu_bar/drawer_menu.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

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
      bottomNavigationBar: BottomNavigationMenu(index: 0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/image/background_home.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 661,
                ),

                Container(
                  width: double.infinity,
                  height: 661,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: AlignmentGeometry.topCenter,
                      end: AlignmentGeometry.bottomCenter,
                      colors: [
                        Colors.black38,
                        Colors.white
                      ]
                    )
                  ),
                ),

                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  left: 0,
                  child: Center(
                    heightFactor: 661,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Coffee Shop",
                          style: TextStyle(
                            fontFamily: 'Decol',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white
                          ),
                        ),

                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 221, 73)
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Pesan Coffee",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'HarunoUmi',
                                fontSize: 18
                              ),
                            ),
                          ),

                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                )
              ]
            ),

            SizedBox(height: 25),
            Text(
              "About Us",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Decol',
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 8),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed do eiusmod "
                  "tempor incididunt ut labore et dolore magna aliqua.Ut enim ad "
                  "minim veniam, quis nostrud exercitation ullamco laboris nisi "
                  "ut aliquip ex ea commodo consequat.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'HarunoUmi',
                fontSize: 18
              ),
            ),

            SizedBox(height: 25),
            Text(
              "Location",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Decol',
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                child: Card(
                  color: Color.fromARGB(255, 237, 202, 48),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 25,
                            color: Colors.white,
                          ),

                          SizedBox(height: 10),
                          Text(
                            "My Location",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'HarunoUmi',
                              fontSize: 25,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}