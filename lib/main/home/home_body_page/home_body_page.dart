import 'package:clothes_shop_project/main/home/models/product.dart';
import 'package:clothes_shop_project/widgets/main_widgets/new_clothes_widget.dart';
import 'package:clothes_shop_project/widgets/main_widgets/sale_widgets.dart';
import 'package:flutter/material.dart';

class HomeBodyPage extends StatefulWidget {
  const HomeBodyPage({super.key});

  @override
  State<HomeBodyPage> createState() => _HomeBodyPageState();
}

class _HomeBodyPageState extends State<HomeBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Image
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/main/main_photo.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  left: 16,
                  bottom: 30,
                  child: Text(
                    "Street clothes",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SafeArea(
              top: false,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sale',
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            'Super summer sale',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 260,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SaleWidget(
                          product: Product(
                            imagePath: 'assets/images/main/clothe1.png',
                            type: 'Dorothy Perkins',
                            title: 'Evening Dress',
                            oldPrice: '15\$',
                            newPrice: '12\$',
                            discount: '-20% ', price: '', color: '', size: '',
                          ),
                        ),
                        SaleWidget(
                          product: Product(
                            imagePath: 'assets/images/main/clothe2.png',
                            type: 'Sitlly',
                            title: 'Sport Dress',
                            oldPrice: '22\$',
                            newPrice: '19\$',
                            discount: '-15% ',
                            price: '', color: '', size: '',
                          ),
                        ),
                        SaleWidget(
                          product: Product(
                            imagePath: 'assets/images/main/clothe3.png',
                            type: 'Dorothy Perkins',
                            title: 'Sport Dress',
                            oldPrice: '14\$',
                            newPrice: '12\$',
                            discount: '-20% ',
                            price: '', color: '', size: '',
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New',
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            'You’ve never seen it before!',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 260,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        NewClothesWidget(
                          product:Product (
                            imagePath: 'assets/images/main/clothe4.png',
                            type: 'Dorothy Perkins',
                            title: 'Sport Dress',
                           price:'15\$',
                              oldPrice: '', newPrice: '', discount: '', color: '', size: '',
                          ),
                        ),
                        NewClothesWidget(
                          product:Product (
                              imagePath: 'assets/images/main/clothe5.png',
                              type: 'Dorothy Perkins',
                              title: 'Sport Dress',
                              price:'15\$',
                            oldPrice: '', newPrice: '', discount: '', color: '', size: '',
                          ),
                        ),
                        NewClothesWidget(
                          product:Product (
                              imagePath: 'assets/images/main/clothe5.png',
                              type: 'Dorothy Perkins',
                              title: 'Sport Dress',
                              price:'15\$',
                            oldPrice: '', newPrice: '', discount: '', color: '', size: '',
                          ),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
