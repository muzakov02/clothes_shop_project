import 'package:clothes_shop_project/main/home/home_body_page/product_info_page.dart';
import 'package:clothes_shop_project/main/home/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DiscountCatalogWidget extends StatelessWidget {
  final Product product;

  const DiscountCatalogWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductInfoPage(product: product),
          ),
        );
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
                            color: Colors.amber,
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
                      color: Colors.red,
                    ),
                    height: 24,
                    width: 40,
                    child: Center(
                      child: Text(
                        product.discount,
                        style: TextStyle(
                            fontSize: 11,
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
                  color: Colors.grey),
            ),
            Text(
              product.title,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  product.oldPrice,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Text(
                  product.newPrice,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.red),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
