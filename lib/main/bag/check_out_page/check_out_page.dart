import 'package:clothes_shop_project/main/bag/check_out_page/widget/address_widget.dart';
import 'package:clothes_shop_project/main/bag/check_out_page/widget/delivery_widget.dart';
import 'package:clothes_shop_project/main/bag/payment_page/payment_page.dart';
import 'package:clothes_shop_project/main/bag/succes_page/succes_page.dart';
import 'package:clothes_shop_project/models/address.dart';
import 'package:clothes_shop_project/widgets/elevation_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Checkout',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Metropolis',
                color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shipping address',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            AddressWidget(
              address: Address(
                name: 'Jane Doe',
                adres: '3 Newbridge Court',
                city: 'Chino Hills',
                state: 'California',
                code: '91709',
                country: 'United States',
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentPage()),
                    );
                  },
                  child: Text(
                    'Change',
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 38,
                  width: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [BoxShadow(color: Colors.white)]),
                  child: SvgPicture.asset(
                    'assets/icons/mastercard.svg',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '**** **** **** 3947',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Delivery method',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DeliveryWidget(image: 'assets/icons/fedex.svg'),
                  SizedBox(
                    width: 20,
                  ),
                  DeliveryWidget(image: 'assets/icons/usps.svg'),
                  SizedBox(
                    width: 20,
                  ),
                  DeliveryWidget(image: 'assets/icons/dhl.svg'),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order:',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Text(
                  'price',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery:',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Text(
                  'price',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Summary:',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Text(
                  'price',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevationButtonWidget(
              text: 'Sumbit Order',
              page: SuccesPage(),
            )
          ],
        ),
      ),
    );
  }
}
