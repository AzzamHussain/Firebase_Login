import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final _auth = FirebaseAuth.instance; // FirebaseAuth instance
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _signup() async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
      // Navigate to the next screen if signup is successful
      // Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
    } catch (e) {
      print(e); // Handle signup error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/splash.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 100, top: 170),
              child: Text(
                'Registered \n Here',
                style: TextStyle(color: Colors.black87, fontSize: 34),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 40,
                    left: 40),
                child: Column(
                  children: [
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color(0xff4c505b),
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            onPressed: _signup, // Signup function

                            icon: Icon(Icons.keyboard_arrow_right),
                          ),
                        ),
                      ],
                      // ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     TextButton(
                      //         onPressed: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (context) => SignupScreen()),
                      //           );
                      //         },
                      //         child: Text(
                      //           'Sign Up',
                      //           style: TextStyle(
                      //               decoration: TextDecoration.underline,
                      //               fontSize: 20,
                      //               color: Colors.black87),
                      //         )),
                      //     TextButton(
                      //         onPressed: () {},
                      //         child: Text(
                      //           'Forgot Password',
                      //           style: TextStyle(
                      //               decoration: TextDecoration.underline,
                      //               fontSize: 20,
                      //               color: Colors.black87),
                      //         ))
                      //   ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
