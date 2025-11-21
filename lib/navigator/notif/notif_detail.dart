import 'package:flutter/material.dart';
import 'package:online_coffee_shop/navigator/notif/list.dart';

class NotifDetail extends StatefulWidget {
  final NotifList notifList;
  const NotifDetail({super.key, required this.notifList});

  @override
  State<NotifDetail> createState() => _NotifDetailState();
}

class _NotifDetailState extends State<NotifDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail",
          style: TextStyle(
            fontFamily: 'Decol',
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: Column(),
    );
  }
}