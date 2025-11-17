import 'package:flutter/material.dart';
import 'package:online_coffee_shop/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();

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
              height: 550,
              margin: EdgeInsets.symmetric(horizontal: 22),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white70,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "SIGN IN",
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
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Name',
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

                          validator: (v) => (v == null || v.isEmpty) ? 'The name is Empty' : null,
                        ),

                        SizedBox(height: 10),
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

                        SizedBox(height: 10),
                        TextFormField(
                          controller: _passwordController,
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
                            return v == null || v.isEmpty
                                ? 'The password is Empty' : null;
                          }
                        ),

                        SizedBox(height: 10),
                        TextFormField(
                          controller: _passwordConfirmController,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
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
                            return v == null || v.isEmpty
                                ? 'The confirm password is Empty' : null;
                          }
                        ),

                        SizedBox(height: 25),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 252, 227, 116),
                            foregroundColor: Colors.white
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(14),
                            child: Text(
                              "Sign In",
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
                          "Did you have a Account?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'HarunoUmi'
                          ),
                        ),

                        SizedBox(width: 10),
                        TextButton(
                          child: Text(
                            "Sign Up",
                          ),

                          onPressed: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => SignUp(),
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
          )
        ],
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