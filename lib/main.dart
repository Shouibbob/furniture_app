import 'package:flutter/material.dart';
import 'package:furniture_app/feature/auth/view/login_view.dart';
import 'package:furniture_app/feature/favorite/splash_view.dart';
//import 'package:furniture_app/feature/auth/view/register_view.dart';
//import 'feature/view/furniture_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      //LoginView(),
    );
  }
}
