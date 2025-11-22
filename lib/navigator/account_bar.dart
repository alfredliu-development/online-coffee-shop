import 'package:flutter/material.dart';

class AccountBar extends StatefulWidget {
  const AccountBar({super.key});

  @override
  State<StatefulWidget> createState() => _AccountBarState();
}

class _AccountBarState extends State<AccountBar> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();

  bool _passwordVisible = false;
  bool _passwordConfirmVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Account",
          style: TextStyle(fontFamily: 'Decol', fontWeight: FontWeight.bold),
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 12),
          Row(
            children: [
              Text(
                "Name",
                style: TextStyle(
                  fontFamily: 'HarunoUmi',
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(width: 10),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: Colors.white60,
                  hintText: "Your Name"
                ),
              ),
            ],
          ),

          SizedBox(height: 25),
          Row(
            children: [
              Text(
                "Email",
                style: TextStyle(
                  fontFamily: 'HarunoUmi',
                  fontWeight: FontWeight.bold
                ),
              ),

              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  iconColor:Colors.white60,
                  hintText: 'yourEmail@gmail.com',
                ),

                keyboardType: TextInputType.emailAddress,
                validator: (v) {
                  return v!.contains('@') || !v.contains(".com") ? "This email isn't valid" : null;
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}