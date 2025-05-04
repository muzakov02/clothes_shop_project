import 'package:clothes_shop_project/main/bag/address_page/adding_address_page.dart';
import 'package:clothes_shop_project/main/bag/check_out_page/widget/full_address_widget.dart';
import 'package:clothes_shop_project/models/address.dart';
import 'package:flutter/material.dart';

class ShippingAddressPage extends StatefulWidget {
  const ShippingAddressPage({super.key});

  @override
  State<ShippingAddressPage> createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shipping Addresses',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Metropolis', color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            FullAddressWidget(
              address: Address(
                  name: 'Jane Doe',
                  adres: '3 Newbridge Court',
                  city: 'Chino Hills',
                  state: 'California',
                  code: '91709',
                  country: 'United States'),
            ),
            SizedBox(
              height: 14,
            ),
            FullAddressWidget(
              address: Address(
                  name: 'Jane Doe',
                  adres: '3 Newbridge Court',
                  city: 'Chino Hills',
                  state: 'California',
                  code: '91709',
                  country: 'United States'),
            ),
            SizedBox(
              height: 14,
            ),
            FullAddressWidget(
              address: Address(
                  name: 'Jane Doe',
                  adres: '51 Riverside',
                  city: 'Chino Hills',
                  state: 'California',
                  code: '91709',
                  country: 'United States'),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddingAddressPage()),);
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
