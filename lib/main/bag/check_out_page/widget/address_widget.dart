import 'package:clothes_shop_project/main/bag/address_page/shipping_address_page.dart';
import 'package:clothes_shop_project/models/address.dart';
import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  final Address address;

  const AddressWidget({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.white)]),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  address.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShippingAddressPage()),
                      );
                    },
                    child: Text(
                      'Change',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: 'Metropolis',
                          color: Colors.red),
                    ))
              ],
            ),
            Text(
              address.adres,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                  color: Colors.black),
            ),
            Text(
              '${address.city}, ${address.state}, ${address.code}',
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
