import 'package:flutter/material.dart';

class PaymentBar extends StatelessWidget {
  const PaymentBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Your Payment",
          style: TextStyle(
            fontFamily: 'Decol',
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Your Payment",
              style: TextStyle(
                fontFamily: 'HarunoUmi',
                fontWeight: FontWeight.bold,
                fontSize: 35
              ),
            ),

            SizedBox(height: 22),
            Text(
              "Rp 0.000",
              style: TextStyle(
                fontFamily: 'HarunoUmi',
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 22
              ),
            )
          ],
        ),
      ),
    );
  }
}