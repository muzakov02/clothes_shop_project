import 'package:clothes_shop_project/main/bag/widgets/bag_widget.dart';
import 'package:flutter/material.dart';

class BagPage extends StatefulWidget {
  const BagPage({super.key});

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'My Bag',
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            // BagWidget(
            //   fullSimpleProduct: FullSimpleProduct(
            //     imagePath: imagePath,
            //     type: type,
            //     title: title,
            //     price: price,
            //     color: color,
            //     size: size,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
