import 'package:clothes_shop_project/cubit/login_cubit.dart';
import 'package:clothes_shop_project/cubit/login_state.dart';
import 'package:clothes_shop_project/login/forgot_password/forgot_password_page.dart';
import 'package:clothes_shop_project/login/widget/text_from_Field_widget.dart';
import 'package:clothes_shop_project/main/home/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomePage()),
            );
          } else if (state is LoginError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Metropolis',
                      color: Colors.black),
                ),
                SizedBox(
                  height: 72,
                ),
                TextFromFieldWidget(text: 'Email',controller: emailController,),
                const SizedBox(height: 10),
                TextFromFieldWidget(text: 'Password', controller: passwordController,),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot your password?',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Metropolis',
                          color: Colors.black),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage()));
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        size: 24,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                state is LoginLoading
                    ? const Center(child: CircularProgressIndicator())
                    : SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<LoginCubit>().signIn(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Metropolis',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Center(
                  child: Text(
                    "Or sign up with social account",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Metropolis',
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 64,
                        width: 92,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Center(
                            child: Image.asset('assets/icons/google.png')),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 64,
                        width: 92,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/icons/facebook.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
