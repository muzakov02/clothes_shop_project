import 'package:clothes_shop_project/main/profil/widget/order_product_widget.dart';
import 'package:clothes_shop_project/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Details',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: 'Metropolis',
              color: Colors.black),
        ),
        actions: [Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order №1947034',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'Metropolis',
                      color: Colors.black),
                ),
                Text(
                  '05-12-2019',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Tracking number:',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.grey),
                ),
                Text(
                  'IW3475453455',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.black),
                ),
                Spacer(),
                Text(
                  'Delivered',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.green),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '3 items',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            OrderProductWidget(
              product: Product(
                  imagePath: 'assets/images/product/order1.png',
                  type: 'Mango',
                  title: 'Pullover',
                  oldPrice: '',
                  newPrice: '',
                  discount: '',
                  price: '51\$',
                  color: 'Grey',
                  size: 'L'),
            ),
            SizedBox(height: 14),
            OrderProductWidget(
              product: Product(
                  imagePath: 'assets/images/product/order2.png',
                  type: 'Mango',
                  title: 'Pullover',
                  oldPrice: '',
                  newPrice: '',
                  discount: '',
                  price: '51\$',
                  color: 'Grey',
                  size: 'L'),
            ),
            SizedBox(height: 14),
            OrderProductWidget(
              product: Product(
                  imagePath: 'assets/images/product/order3.png',
                  type: 'Mango',
                  title: 'Pullover',
                  oldPrice: '',
                  newPrice: '',
                  discount: '',
                  price: '51\$',
                  color: 'Grey',
                  size: 'L'),
            ),
            SizedBox(height: 20),
            Text(
              'Order information',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                  color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 10),
                Text(
                  'Shipping Address:',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.grey),
                ),
                Text(
                  "3 Newbridge Court, Chino Hills,\nCA 91709, United States",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: 'Metropolis',
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Payment method:',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.grey),
                ),
                Spacer(),
                SvgPicture.asset('assets/icons/mastercard.svg'),
                Text(
                  "**** **** **** 3947",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: 'Metropolis',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery method:',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.grey),
                ),
                Text(
                  "FedEx, 3 days, 15\$",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: 'Metropolis',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount:',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.grey),
                ),
                Text(
                  "10%, Personal promo code",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: 'Metropolis',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount:',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.grey),
                ),
                Text(
                  "133\$",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: 'Metropolis',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: BorderSide(color: Colors.black),
                    ),
                    child: Text(
                      'Reorder',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Leave feedback',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
