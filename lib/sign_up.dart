import 'package:flutter/material.dart';
import 'package:online_coffee_shop/navigator/home/home_bar.dart';
import 'package:online_coffee_shop/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/image/background.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
          ),

          Container(
              decoration: BoxDecoration(
                color: Colors.black45,
              )
          ),

          Center(
            child: Container(
              height: 400,
              margin: EdgeInsets.symmetric(horizontal: 22),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white70,
              ),

              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "SIGN UP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Decol'
                      ),
                    ),

                    SizedBox(height: 25),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    color: Colors.black54
                                ),

                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 252, 227, 116)
                                    )
                                ),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),

                            keyboardType: TextInputType.emailAddress,
                            validator: (v) {
                              if (v == null || v.isEmpty) return 'The email is Empty';
                              return !v.contains('@') || !v.contains(".com") ? "This email isn't valid" : null;
                            },
                          ),

                          SizedBox(height: 20),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    color: Colors.black54
                                ),

                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 252, 227, 116)
                                    )
                                ),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),

                            keyboardType: TextInputType.visiblePassword,
                            validator: (v) {
                              return v == null || v.isEmpty ? 'The password is Empty' : null;
                            },
                          ),

                          SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 252, 227, 116),
                                foregroundColor: Colors.white
                            ),

                            child: Padding(
                              padding: EdgeInsets.all(14),
                              child: Text(
                                "Sign Up",
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

                    SizedBox(height: 11),
                    Center(
                      child: Row(
                        children: [
                          Text(
                            "Did you haven't a Account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'HarunoUmi'
                            ),
                          ),

                          SizedBox(width: 10),
                          TextButton(
                            child: Text(
                              "Sign In",
                            ),

                            onPressed: () => Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) => SignIn(),
                                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => HomeBar(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    }
  }
}