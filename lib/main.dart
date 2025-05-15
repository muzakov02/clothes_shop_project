import 'package:clothes_shop_project/login/forgot_password/forgot_password_page.dart';
import 'package:clothes_shop_project/login/login/login_page.dart';
import 'package:clothes_shop_project/login/sign_up/sign_up_page.dart';
import 'package:clothes_shop_project/main/home/home_body_page/home_body_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

import 'cubit/login_cubit.dart';
import 'repo/auth_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AuthRepo _authRepo = AuthRepo();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(_authRepo),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFF9F9F9),
          appBarTheme: AppBarTheme(backgroundColor:  Color(0xFFF9F9F9)),
          fontFamily: 'Metropolis',
        ),
        home: ForgotPasswordPage(),
      ),
    );
  }
}
