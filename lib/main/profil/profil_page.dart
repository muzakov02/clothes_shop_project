import 'package:clothes_shop_project/main/profil/my_orders_page.dart';
import 'package:clothes_shop_project/main/profil/settings_page.dart';
import 'package:clothes_shop_project/main/profil/widget/list_tile_widget.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My profile',
              style: TextStyle(
                  fontSize: 34,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage("assets/images/product/avatar2.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Matilda Brown',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Text(
                      'matildabrown@mail.com',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTileWidget(
              title: 'My orders',
              subtitle: 'Already have 12 orders',
              page: MyOrdersPage(),
            ),
            ListTileWidget(title: 'Shipping addresses', subtitle: '3 ddresses'),
            ListTileWidget(title: 'Payment methods', subtitle: 'Visa  **34'),
            ListTileWidget(
                title: 'Promocodes', subtitle: 'You have special promocodes'),
            ListTileWidget(
                title: 'My reviews', subtitle: 'Reviews for 4 items'),
            ListTileWidget(
              title: 'Settings',
              subtitle: 'Notifications, password',
              page: SettingsPage(),
            ),
          ],
        ),
      ),
    );
  }
}
