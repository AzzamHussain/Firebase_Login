import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hustling/pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'login',
    routes: {'login': (context) => Mylogin()},
  ));
}
