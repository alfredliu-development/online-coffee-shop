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

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                iconColor: Colors.black87,
                hintText: "Your Name"
              ),
            ),

            SizedBox(height: 25),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                iconColor:Colors.black87,
                hintText: 'yourEmail@gmail.com',
              ),
            
              keyboardType: TextInputType.emailAddress,
              validator: (v) {
                return v!.contains('@') || !v.contains(".com") ? "This email isn't valid" : null;
              },
            ),

            SizedBox(height: 25),
            TextFormField(
              controller: _passwordController,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                iconColor:Colors.black87,
                hintText: 'your password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off
                  ),

                  onPressed: () => setState(() {
                    _passwordVisible = !_passwordVisible;
                  }),
                )
              ),

              keyboardType: TextInputType.visiblePassword,
            ),

            SizedBox(height: 25),
            TextFormField(
              controller: _passwordConfirmController,
              obscureText: !_passwordConfirmVisible,
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                iconColor:Colors.black87,
                hintText: 'your password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordConfirmVisible ? Icons.visibility : Icons.visibility_off
                  ),

                  onPressed: () => setState(() {
                    _passwordConfirmVisible = !_passwordConfirmVisible;
                  }),
                )
              ),

              keyboardType: TextInputType.visiblePassword,
            ),

            SizedBox(height: 35),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 252, 227, 116),
                foregroundColor: Colors.white
              ),

              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Text(
                  "Edit",
                  style: TextStyle(
                    fontFamily: 'Decol',
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            
              onPressed: () => _submitForm(),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          padding: EdgeInsets.all(20),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),

          content: Text(
            'Successful',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Decol'
            ),
          ),

          duration: Duration(milliseconds: 3000),
        ),
      );
    }
  }
}