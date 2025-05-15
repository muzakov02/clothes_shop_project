import 'package:clothes_shop_project/login/widget/text_from_Field_widget.dart';
import 'package:clothes_shop_project/main/home/home_page/home_page.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Forgot password",
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                fontFamily: 'Metropolis',
                color: Colors.black),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Please, enter your email address. You will receive a link to create a new password via email.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Metropolis',
                color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
         TextFromFieldWidget(controller: emailController, text: 'Email'),
          const SizedBox(height: 100),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
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
              child: Text(
                'Send',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Metropolis',
                    color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
