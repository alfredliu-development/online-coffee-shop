import 'package:flutter/material.dart';

class PaymentBar extends StatelessWidget {
  const PaymentBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Payment",
          style: TextStyle(
            fontFamily: 'Decol',
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}