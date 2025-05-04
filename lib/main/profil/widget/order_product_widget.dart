import 'package:clothes_shop_project/models/product.dart';
import 'package:flutter/material.dart';

class OrderProductWidget extends StatelessWidget {
  final Product product;

  const OrderProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ProductInfoPage(saleProduct: saleProduct),
        //   ),
        // );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        width: double.infinity,
        margin: const EdgeInsets.only(right: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Qo‘shildi
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                height: 104,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: 'Metropolis',
                          color: Colors.black),
                    ),
                    Text(
                      product.type,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          fontFamily: 'Metropolis',
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'Color: ',
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Metropolis',
                              color: Colors.grey),
                        ),
                        Text(
                          product.color,
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Size: ',
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Metropolis',
                              color: Colors.grey),
                        ),
                        Text(
                          product.size,
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Units:',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              fontFamily: 'Metropolis',
                              color: Colors.grey),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              fontFamily: 'Metropolis',
                              color: Colors.black),
                        ),
                        Spacer(),
                        Text(
                          product.price,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              fontFamily: 'Metropolis',
                              color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
