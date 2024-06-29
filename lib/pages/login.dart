import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hustling/pages/home.dart';
import 'package:hustling/pages/signup.dart';
//import 'package:hustling/pages/splashScreen.dart';// Import the signup screen

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  final _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() async {
    try {
      // Attempt to sign in with email and password
      await _auth.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } catch (e) {
      // Print the error and show a snackbar with the error message
      print(e);
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text('Login failed: ${e.toString()}')),
      //   );
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
                'Welcome \n Back',
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
                            onPressed: _login,
                            icon: Icon(Icons.keyboard_arrow_right),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 20,
                                  color: Colors.black87),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 20,
                                  color: Colors.black87),
                            ))
                      ],
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

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:hustling/pages/splashScreen.dart';
// import 'signup.dart'; // Import the signup screen

// class Mylogin extends StatefulWidget {
//   const Mylogin({super.key});

//   @override
//   State<Mylogin> createState() => _MyloginState();
// }

// class _MyloginState extends State<Mylogin> {
//   final _auth = FirebaseAuth.instance;
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   void _login() async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//           email: _emailController.text, password: _passwordController.text);
//           Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => SplashScreen()),
//       );
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage('assets/splash.png'), fit: BoxFit.cover),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Stack(
//           children: [
//             Container(
//               padding: EdgeInsets.only(left: 100, top: 170),
//               child: Text(
//                 'Welcome \n Back',
//                 style: TextStyle(color: Colors.black87, fontSize: 34),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.5,
//                     right: 40,
//                     left: 40),
//                 child: Column(
//                   children: [
//                     TextField(
//                       controller: _emailController,
//                       decoration: InputDecoration(
//                           fillColor: Colors.white,
//                           filled: true,
//                           hintText: 'Email',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(15))),
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     TextField(
//                       controller: _passwordController,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                           fillColor: Colors.white,
//                           filled: true,
//                           hintText: 'Password',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(15))),
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Sign In',
//                           style: TextStyle(
//                               color: Color(0xff4c505b),
//                               fontSize: 30,
//                               fontWeight: FontWeight.w500),
//                         ),
//                         CircleAvatar(
//                           radius: 35,
//                           backgroundColor: Color(0xff4c505b),
//                           child: IconButton(
//                             onPressed: () {},
//                             icon: Icon(Icons.keyboard_arrow_right),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SignupScreen()),
//                               );
//                             },
//                             child: Text(
//                               'Sign Up',
//                               style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   fontSize: 20,
//                                   color: Colors.black87),
//                             )),
//                         TextButton(
//                             onPressed: () {},
//                             child: Text(
//                               'Forgot Password',
//                               style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   fontSize: 20,
//                                   color: Colors.black87),
//                             ))
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
