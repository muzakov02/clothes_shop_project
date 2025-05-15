import 'package:clothes_shop_project/main/bag/bag_page/promo_bottom_sheet.dart';
import 'package:clothes_shop_project/main/bag/bag_page/widget/bag_widget.dart';
import 'package:clothes_shop_project/main/bag/check_out_page/check_out_page.dart';
import 'package:clothes_shop_project/models/product.dart';
import 'package:clothes_shop_project/widgets/elevation_button_widget.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Bag',
                style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(height: 20),
              BagWidget(
                product: Product(
                  imagePath: 'assets/images/bag/bag1.png',
                  type: '',
                  title: 'Evening Dress',
                  price: '51',
                  color: 'Black',
                  size: 'L',
                  oldPrice: '',
                  newPrice: '',
                  discount: ' ',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BagWidget(
                product: Product(
                  imagePath: 'assets/images/bag/bag2.png',
                  type: '',
                  title: 'T-Shirt',
                  price: '30',
                  color: 'Grey',
                  size: 'L',
                  oldPrice: '',
                  newPrice: '',
                  discount: ' ',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BagWidget(
                product: Product(
                  imagePath: 'assets/images/bag/bag3.png',
                  type: '',
                  title: 'Sport Dress',
                  price: '43',
                  color: 'Black',
                  size: 'L',
                  oldPrice: '',
                  newPrice: '',
                  discount: ' ',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                onTapOutside: (_) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                    labelText: ' Enter your promo code',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(36.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: CircleAvatar(
                        radius: (16),
                        backgroundColor: Colors.black,
                        child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                showDragHandle: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(34)),
                                ),
                                builder: (context) {
                                  return DraggableScrollableSheet(
                                    initialChildSize: 0.6,
                                    maxChildSize: 0.95,
                                    minChildSize: 0.5,
                                    expand: false,
                                    builder: (context, scrollController) {
                                      return SingleChildScrollView(
                                        controller: scrollController,
                                        child:
                                            PromoBottomSheet(), // sizning widget
                                      );
                                    },
                                  );
                                },
                              );
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )))),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total amount:',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Text('price')
                ],
              ),
              SizedBox(height: 20),
              ElevationButtonWidget(
                text: 'Check Out',
                page: CheckOutPage(),
              )
            ],
          )),
    );
  }
}
