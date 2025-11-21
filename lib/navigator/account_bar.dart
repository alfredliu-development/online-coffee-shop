import 'package:flutter/material.dart';

class AccountBar extends StatefulWidget {
  const AccountBar({super.key});

  @override
  State<StatefulWidget> createState() => _AccountBarState();
}

class _AccountBarState extends State<AccountBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Account",
          style: TextStyle(
            fontFamily: 'Decol',
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: Column(
        children: [],
      ),
    );
  }
}