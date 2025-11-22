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
        centerTitle: true,
        title: Text(
          "Detail",
          style: TextStyle(
            fontFamily: 'Decol',
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              widget.notifList.title,
              style: TextStyle(
                fontFamily: 'Decol',
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          ),

          Divider(
            height: 10,
            color: Colors.black45,
            radius: BorderRadius.circular(20),
            thickness: 2,
            endIndent: 20,
          ),

          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.notifList.dateTitle,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'HarunoUmi'
              ),
            ),
          ),

          SizedBox(height: 13),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: Text(
                widget.notifList.about,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'HarunoUmi',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}