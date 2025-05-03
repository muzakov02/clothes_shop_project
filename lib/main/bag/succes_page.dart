import 'package:clothes_shop_project/main/home/home_body_page/home_body_page.dart';
import 'package:flutter/material.dart';
class SuccesPage extends StatelessWidget {
  const SuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/bag/succes.png'),
            SizedBox(height: 40,),
            Text('Success!',
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 34,
                color: Colors.black),),
            SizedBox(height: 20,),

            Text('Your order will be delivered soon.',
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),),
            Text('Thank you for choosing our app!',
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),),
            SizedBox(height: 200,),

            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeBodyPage()));
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
                  'CONTINUE SHOPPING',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
