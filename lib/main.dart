import 'package:clothes_shop_project/login/login/login_page.dart';
import 'package:clothes_shop_project/login/sign_up/sign_up_page.dart';
import 'package:clothes_shop_project/main/catalog/brand_page.dart';
import 'package:clothes_shop_project/main/favorites/favorites_page.dart';
import 'package:clothes_shop_project/main/home/home_page/home_page.dart';
import 'package:clothes_shop_project/main/rating/rating_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Metropolis',
      ),
      home:  LoginPage(),
    );
  }
}


