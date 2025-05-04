import 'package:clothes_shop_project/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SimpleCatalogWidget extends StatelessWidget {
  final Product product;

  const SimpleCatalogWidget({
    super.key,
    required this.product,
  });

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
        width: 150,
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        product.imagePath,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        height: 184,
                        width: double.infinity,
                      ),
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: 5,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.grey.shade200,
                          ),
                          itemCount: 5,
                          itemSize: 16.0,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(width: 4),
                        Text("(10)", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  left: 8,
                  top: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black,
                    ),
                    height: 24,
                    width: 40,
                    child: Center(
                      child: Text(
                        'New',
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: -1,
                  bottom: -2,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border,
                      size: 24,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              product.type,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  fontFamily: 'Metropolis',
                  color: Colors.grey),
            ),
            Text(
              product.title,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Metropolis',
                  color: Colors.black),
            ),
            Text(
              product.price,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                fontFamily: 'Metropolis',
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
