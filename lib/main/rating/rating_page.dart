import 'package:clothes_shop_project/main/rating/rating_stars_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    String today = DateFormat('dd MMMM, yyyy').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Rating&Reviews',
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            RatingStarsWidget(),
            SizedBox(
              height: 10,
            ),
            Row(
              spacing: 10.0,
              children: [
                Text(
                  "8 reviews",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Metropolis',
                      color: Colors.black),
                ),
                Spacer(),
                Checkbox(
                  value: isLiked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isLiked = newValue ?? false;
                    });
                  },
                ),
                Text(
                  'With photo',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, top: 20),
                  // avatarga joy qoldiramiz
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 4)
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        // avatar bilan to‘qnashmasligi uchun
                        Text(
                          'Helene Moore',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBarIndicator(
                              rating: 4,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 16.0,
                              direction: Axis.horizontal,
                            ),
                            Text(
                              today,
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7\" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Helpful',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.thumb_up,
                                  size: 13,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  left: 0,
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/product/avatar.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
