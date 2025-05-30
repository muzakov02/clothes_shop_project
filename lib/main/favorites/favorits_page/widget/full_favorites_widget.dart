import 'package:clothes_shop_project/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class FullFavoritesWidget extends StatelessWidget {
  final Product product;

  const FullFavoritesWidget({
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
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 16.0,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(width: 4),
                        Text("(10)",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Metropolis',
                            )),
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
                    backgroundColor: Colors.red,
                    child: SvgPicture.asset(
                      'assets/icons/bag2.svg',
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
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      'Color:',
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      product.color,
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Size:',
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      product.size,
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
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
