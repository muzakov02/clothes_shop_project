import 'package:clothes_shop_project/main/profil/order_details_page.dart';
import 'package:clothes_shop_project/models/order.dart';
import 'package:flutter/material.dart';

class OrdersWidget extends StatelessWidget {
  final Order order;

  const OrdersWidget({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black12),
          ]),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order № #${order.orderNumber.toString()}',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    '05-12-2019',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Tracking number:',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Text(
                    order.trackingNumber,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Quantity:',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Text(
                    order.quantity,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    'Total Amount:',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Text(
                    order.price,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w500,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderDetailsPage()));
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          'Details',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Delivered',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
