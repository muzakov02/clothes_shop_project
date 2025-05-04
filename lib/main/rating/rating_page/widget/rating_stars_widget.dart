import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStarsWidget extends StatelessWidget {
  const RatingStarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              '4.3',
              style: TextStyle(
                  fontSize: 44,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            Text(
              '23 ratings',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ],
        ),
        Row(
          spacing: 10,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 4,
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
                RatingBarIndicator(
                  rating: 4,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 4,
                  itemSize: 16.0,
                  direction: Axis.horizontal,
                ),
                RatingBarIndicator(
                  rating: 3,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 3,
                  itemSize: 16.0,
                  direction: Axis.horizontal,
                ),
                RatingBarIndicator(
                  rating: 2,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 2,
                  itemSize: 16.0,
                  direction: Axis.horizontal,
                ),
                RatingBarIndicator(
                  rating: 1,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 1,
                  itemSize: 16.0,
                  direction: Axis.horizontal,
                ),
              ],
            ),
            Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 8, // Qalinligi
                  width: 114, // Ekranni to‘liq qoplaydi
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ), // Rangi
                ),
                Container(
                  height: 8, // Qalinligi
                  width: 40, // Ekranni to‘liq qoplaydi
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ), // Rangi
                ),
                Container(
                  height: 8, // Qalinligi
                  width: 29, // Ekranni to‘liq qoplaydi
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ), // Rangi
                ),
                Container(
                  height: 8, // Qalinligi
                  width: 15, // Ekranni to‘liq qoplaydi
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ), // Rangi
                ),
                Container(
                  height: 8, // Qalinligi
                  width: 8, // Ekranni to‘liq qoplaydi
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ), // Rangi
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '12',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Text(
                  '5',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Text(
                  '4',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Text(
                  '2',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Text(
                  '0',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
